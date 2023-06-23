object FormMain: TFormMain
  Left = 0
  Top = 0
  Caption = #1058#1077#1089#1090#1086#1074#1086#1077' '#1079#1072#1076#1072#1085#1080#1077' '#8470' 2'
  ClientHeight = 255
  ClientWidth = 697
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pnlHead: TPanel
    Left = 0
    Top = 0
    Width = 697
    Height = 49
    Align = alTop
    TabOrder = 0
    object lblFirm: TLabel
      Left = 24
      Top = 16
      Width = 66
      Height = 13
      Caption = #1054#1088#1075#1072#1085#1080#1079#1072#1094#1080#1103
    end
    object cbbFirms: TComboBox
      Left = 120
      Top = 13
      Width = 265
      Height = 21
      Style = csDropDownList
      TabOrder = 0
    end
    object btnUpdate: TBitBtn
      Left = 592
      Top = 11
      Width = 97
      Height = 25
      Caption = #1055#1088#1080#1084#1077#1085#1080#1090#1100
      Glyph.Data = {
        E6040000424DE604000000000000360000002800000014000000140000000100
        180000000000B0040000C40E0000C40E00000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE8E4CCD4CDA0CBC28ACBC28AD4CDA0E8E4
        CCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFCEC692A7983AA69738A99A3FAA9C41AA9C41A99A3FA69738A7983A
        CEC692FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5F3E9AC9E
        45A8993CAD9F47AEA049AEA049AD9F47AD9E46AD9F48AEA049AD9F47A8993CAC
        9E46F4F3E8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4F2E8A79739AB9D44AEA049
        AEA049AD9F48A8993CAA9C41AEA04AA69636AC9E45AEA049AEA049AB9D44A697
        39F4F3E7FFFFFFFFFFFFFFFFFFFFFFFFAC9E45AB9D44AEA049AEA049AD9F48A5
        9636D5CEA0FFFFFFFFFFFFF5F3E9AD9F49AB9D43AEA049AEA049AB9D44AC9E46
        FFFFFFFFFFFFFFFFFFCDC690A8993CAEA049AEA049AD9F48A8993CD3CB9DFFFF
        FFBCB169AB9D44E6E2C8FFFFFFAFA04AAD9E46AEA049AEA049A8993CCDC590FF
        FFFFFFFFFFA79739AD9F47AEA049AD9F48AC9E45AC9F47FFFFFFBAAF65A8993C
        AC9E45A49533E8E4CDBFB571AB9D44AEA049AEA049AD9F47A79739FFFFFFE8E4
        CBA69739AEA049AD9F48AC9E45A59535CAC28AF7F5EDA08F2AAB9C43AD9F48AD
        9F48A39432A8993BAEA049AEA049AEA049AEA049A69738E8E5CCD4CDA0A99A3F
        AEA049AB9D44BDB169FFFFFFFFFFFFFEFEFDFFFFFFC8C085AA9C42A8993BD4CD
        9FCDC48FA99A3EAEA049AEA049AEA049A99A3FD5CDA0CBC28BAA9C41AEA049AD
        9F48A59636EBE8D3FFFFFFFFFFFFF5F4EBA69738AC9D44AFA14CFFFFFFFFFFFF
        AA9C41AC9E46AEA049AEA049AA9C41CBC28BCBC28BAA9C41AEA049AEA049AC9E
        46AB9D43FFFFFFFFFFFFB3A655AB9D43A69637F0EDDDFFFFFFFFFFFFEAE6CFA5
        9636AD9F48AEA049AA9C41CBC28BD4CDA0A99A3FAEA049AEA049AEA049A8993D
        CFC793DBD4AEA7983AAB9C42C6BB7EFFFFFFFEFEFEFFFFFFFFFFFFBDB26BAB9D
        44AEA049A99A3FD5CDA0E8E4CBA69739AEA049AEA049AEA049AD9F48A8993DA4
        9533AD9F48AD9F48AC9E46A39330F4F2E6D0C795A99A3DAD9E47AD9F48AEA049
        A69738E8E4CCFFFFFFA79839AD9F47AEA049AEA049AC9D44BCB26BE2DEBFA495
        34AD9E46A99A3EB5A85AFFFFFFAEA14AAC9D44AD9F48AEA049AD9F47A79739FF
        FFFFFFFFFFCDC590A8993CAEA049AEA049AC9E46B0A24EFFFFFFE1DBBBA69636
        B4A758FFFFFFDAD3ACA7983BAD9F48AEA049AEA049A8993CCDC690FFFFFFFFFF
        FFFFFFFFAC9E45AC9D44AEA049AEA049AB9C42B0A24EFAF9F5FFFFFFFFFFFFDD
        D7B3A59636AD9F48AEA049AEA049AC9D44AC9E45FFFFFFFFFFFFFFFFFFFFFFFF
        F4F2E7A79739AC9D44AEA049AEA049AC9E45A59636B3A656AFA14BA7983AAD9F
        48AEA049AEA049AC9D44A79739F4F2E7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5
        F3E8AC9E45A8993CAD9F47AEA049AD9F48AC9E45AC9E46AEA049AEA049AD9F47
        A8993CAB9D45F4F2E7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFCDC490A79739A69739A99A3FAA9C41AA9C41A99A3FA69739A79739CEC590FF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFE8E4CBD4CDA0CAC28BCAC28BD4CDA0E8E4CBFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFF}
      TabOrder = 1
      OnClick = btnUpdateClick
    end
  end
  object dbgrdData: TDBGrid
    Left = 0
    Top = 49
    Width = 697
    Height = 206
    Align = alClient
    DataSource = dsData
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'YEAR'
        ReadOnly = True
        Title.Caption = #1043#1086#1076
        Width = 49
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'JANUARY'
        ReadOnly = True
        Title.Caption = #1071#1085#1074#1072#1088#1100
        Width = 49
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'FEBRUARY'
        Title.Caption = #1060#1077#1074#1088#1072#1083#1100
        Width = 49
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'MARCH'
        Title.Caption = #1052#1072#1088#1090
        Width = 49
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'APRIL'
        ReadOnly = True
        Title.Caption = #1040#1087#1088#1077#1083#1100
        Width = 49
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'MAY'
        Title.Caption = #1052#1072#1081
        Width = 49
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'JUNE'
        ReadOnly = True
        Title.Caption = #1048#1102#1085#1100
        Width = 49
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'JULY'
        Title.Caption = #1048#1102#1083#1100
        Width = 49
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'AUGUST'
        Title.Caption = #1040#1074#1075#1091#1089#1090
        Width = 49
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'SEPTEMBER'
        Title.Caption = #1057#1077#1085#1090#1103#1073#1088#1100
        Width = 49
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'OCTOBER'
        Title.Caption = #1054#1082#1090#1103#1073#1088#1100
        Width = 49
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOVEMBER'
        Title.Caption = #1053#1086#1103#1073#1088#1100
        Width = 49
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DECEMBER'
        ReadOnly = True
        Title.Caption = #1044#1077#1082#1072#1073#1088#1100
        Width = 49
        Visible = True
      end>
  end
  object conMain: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=MSDAORA.1;Password=w;User ID=chtpz;Data Source=127.0.0.' +
      '1;Persist Security Info=True'
    Provider = 'MSDAORA.1'
    Left = 56
    Top = 136
  end
  object dsData: TDataSource
    DataSet = qryData
    Left = 256
    Top = 144
  end
  object qryData: TADOQuery
    Active = True
    Connection = conMain
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT EXTRACT(YEAR FROM doc_date) AS Year, '
      
        '    SUM(CASE WHEN EXTRACT(MONTH FROM doc_date) = 1 THEN sum ELSE' +
        ' 0 END) AS January, '
      
        '    SUM(CASE WHEN EXTRACT(MONTH FROM doc_date) = 2 THEN sum ELSE' +
        ' 0 END) AS February, '
      
        '    SUM(CASE WHEN EXTRACT(MONTH FROM doc_date) = 3 THEN sum ELSE' +
        ' 0 END) AS March, '
      
        '    SUM(CASE WHEN EXTRACT(MONTH FROM doc_date) = 4 THEN sum ELSE' +
        ' 0 END) AS April, '
      
        '    SUM(CASE WHEN EXTRACT(MONTH FROM doc_date) = 5 THEN sum ELSE' +
        ' 0 END) AS May, '
      
        '    SUM(CASE WHEN EXTRACT(MONTH FROM doc_date) = 6 THEN sum ELSE' +
        ' 0 END) AS June, '
      
        '    SUM(CASE WHEN EXTRACT(MONTH FROM doc_date) = 7 THEN sum ELSE' +
        ' 0 END) AS July, '
      
        '    SUM(CASE WHEN EXTRACT(MONTH FROM doc_date) = 8 THEN sum ELSE' +
        ' 0 END) AS August,'
      
        '    SUM(CASE WHEN EXTRACT(MONTH FROM doc_date) = 9 THEN sum ELSE' +
        ' 0 END) AS September, '
      
        '    SUM(CASE WHEN EXTRACT(MONTH FROM doc_date) = 10 THEN sum ELS' +
        'E 0 END) AS October, '
      
        '    SUM(CASE WHEN EXTRACT(MONTH FROM doc_date) = 11 THEN sum ELS' +
        'E 0 END) AS November, '
      
        '    SUM(CASE WHEN EXTRACT(MONTH FROM doc_date) = 12 THEN sum ELS' +
        'E 0 END) AS December '
      '    FROM Document '
      '    inner join firm on firm.firm_id = document.firm_id'
      '    GROUP BY EXTRACT(YEAR FROM doc_date)')
    Left = 160
    Top = 144
  end
end
