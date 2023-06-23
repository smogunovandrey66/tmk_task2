unit unMain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Data.DB, Data.Win.ADODB,
  Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls, Vcl.Buttons;

type
  TFormMain = class(TForm)
    pnlHead: TPanel;
    lblFirm: TLabel;
    cbbFirms: TComboBox;
    btnUpdate: TBitBtn;
    dbgrdData: TDBGrid;
    conMain: TADOConnection;
    dsData: TDataSource;
    qryData: TADOQuery;
    procedure FormShow(Sender: TObject);
    procedure btnUpdateClick(Sender: TObject);
  private
    { Private declarations }
    procedure loadFirms;
    procedure updateData;
  public
    { Public declarations }
  end;

var
  FormMain: TFormMain;

implementation

{$R *.dfm}

{ TFormMain }

procedure TFormMain.btnUpdateClick(Sender: TObject);
begin
  updateData;
end;

procedure TFormMain.FormShow(Sender: TObject);
begin
  loadFirms;
end;

procedure TFormMain.loadFirms;
var
  query: TADOQuery;
  id: Integer;
  name: string;
begin
  query := TADOQuery.Create(Self);
  query.Connection := conMain;
  query.SQL.Add('Select * from firm');
  query.Open;

  cbbFirms.Clear;
  cbbFirms.AddItem('Все', TObject(0));
  query.First;
  while not query.Eof do begin
    id := query.FieldByName('firm_id').AsInteger;
    name := query.FieldByName('name').AsString;
    cbbFirms.AddItem(name, TObject(id));
    query.Next;
  end;

  cbbFirms.ItemIndex := 0;


  query.Free;
end;

procedure TFormMain.updateData;
var
  id: Integer;
begin
  qryData.Close;
  qryData.SQL.Clear;

  id := Integer(cbbFirms.Items.Objects[cbbFirms.ItemIndex]);

  with qryData.SQL do begin
    Add('SELECT EXTRACT(YEAR FROM doc_date) AS Year,');
    Add('SUM(CASE WHEN EXTRACT(MONTH FROM doc_date) = 1 THEN sum ELSE 0 END) AS January,');
    Add('SUM(CASE WHEN EXTRACT(MONTH FROM doc_date) = 2 THEN sum ELSE 0 END) AS February,');
    Add('SUM(CASE WHEN EXTRACT(MONTH FROM doc_date) = 3 THEN sum ELSE 0 END) AS March,');
    Add('SUM(CASE WHEN EXTRACT(MONTH FROM doc_date) = 4 THEN sum ELSE 0 END) AS April,');
    Add('SUM(CASE WHEN EXTRACT(MONTH FROM doc_date) = 5 THEN sum ELSE 0 END) AS May,');
    Add('SUM(CASE WHEN EXTRACT(MONTH FROM doc_date) = 6 THEN sum ELSE 0 END) AS June,');
    Add('SUM(CASE WHEN EXTRACT(MONTH FROM doc_date) = 7 THEN sum ELSE 0 END) AS July,');
    Add('SUM(CASE WHEN EXTRACT(MONTH FROM doc_date) = 8 THEN sum ELSE 0 END) AS August,');
    Add('SUM(CASE WHEN EXTRACT(MONTH FROM doc_date) = 9 THEN sum ELSE 0 END) AS September,');
    Add('SUM(CASE WHEN EXTRACT(MONTH FROM doc_date) = 10 THEN sum ELSE 0 END) AS October,');
    Add('SUM(CASE WHEN EXTRACT(MONTH FROM doc_date) = 11 THEN sum ELSE 0 END) AS November,');
    Add('SUM(CASE WHEN EXTRACT(MONTH FROM doc_date) = 12 THEN sum ELSE 0 END) AS December');
    Add('FROM Document');
    if(id > 0) then begin
      Add('inner join firm on firm.firm_id = document.firm_id');
      Add(Format('where firm.firm_id = %d', [id]));
    end;
    Add('GROUP BY EXTRACT(YEAR FROM doc_date)');
  end;
  qryData.Open;
end;

end.
