unit Knight;

interface

uses graphics;

type

  { TBool }

  TBool = class(TObject)
  private
    function GetTrueString: string;
    function GetFalseString: string;
  public
    Property TrueString: string read GetTrueString;
    Property FalseString: string read GetFalseString;
  end;
  
  TInt = class(TObject)
  private
    FMinValue: integer;
    FMaxValue: integer;
  public
  
  end;

  TStr = class
  private
  public
    function AppDirectory: string;
    function CaseStr(const AText: string; const AValues: array of string): Integer;
    function padL(const AString: AnsiString; const Len: Integer;
      const Caracter: AnsiChar = ' '): AnsiString;
    function Trans(Str, Char, CharS: string): string;
    function RepeatChar(Len: Integer; Char: char = ' '): string;
    function RemovePoint(Str: string): string;
    function Replace(const Str, OldPattern, NewPattern: string): string;
    function Right(const Str: string; const Count: Integer): string;

    function LeftFit(Text: string; Count: Smallint; Ch: Char = '0'): string; overload;
    function LeftFit(Value: Currency; Count: Smallint; Ch: Char = '0'; Masc: string = '0.0000'): string;overload;

    function RightFit(Text: string; Count: Smallint; Ch: Char = ' ') : string;overload;
    function RightFit(Value: Currency; Count: Smallint; Ch: Char = ' '; Masc: string = '0.0000') : string;overload;
  end;
  
  TUserDialog = class(TObject)
  private

  public
    procedure WarningOK(const Text: string); overload;
    procedure WarningOK(const Text, Title: string); overload;
    procedure ErrorOK(const Text: string); overload;
    procedure ErrorOK(const Text, Title: string); overload;
    function ConfirmationYesNo(const Text: string): Boolean; overload;
    function ConfirmationYesNo(const Text, Title: string): Boolean; overload;
    function ConfirmationYesNo(const Text, Title: string; const IsValid: Boolean):
        Boolean; overload;
  end;
  
  TDraw = class(TObject)
  private
    function Line(x,y: integer):TCanvas;
    function Rectangle(topline, bottomline, leftline, rightline: integer):TCanvas;
  public
    
  end;

  { TValidate }

  TValidate = class(TObject)
  private

  public
    //It validates the brazilian ID
    function CPF(Value: string): Boolean;
    function CNPJ(Value: string): Boolean;
  end;

  { TPut }

  TPut = class(TObject)
  private
    //It puts a char for n times at left string
    function FillLeft(text: string; times: integer; chr: char): string; overload;
    function FillLeft(text: string; times: integer): string; overload;
    //It puts a char for n times at right string
    function FillRight(text: string; times: integer; chr: char): string; overload;
    function FillRight(text: string; times: integer): string; overload;
  public
    
  end;

  { TConvert }

  TConvert = class(TObject)
  private

  public
    //to convert to string type
    function ToString(double: Double): string; overload;
    function ToString(Value: Boolean): string; overload;
    function ToString(date: TDateTime): string; overload;
    //to convert to boolean type
    function ToBoolean(Value: String): boolean; overload;
    function ToBoolean(Value: integer): boolean; overload;
    function ToBoolean(Value: double): boolean; overload;
    //to convert to Byte type
    function ToByte(Value: string):Byte; Overload;
    function ToByte(Value: Boolean):Byte; Overload;
    //to convert to Word type
    function ToWord(Value: string):Byte; Overload;
    function ToWord(Value: Boolean):Byte; Overload;
    //to convert to Char type
    function ToChar(Value: string):Char; Overload;
    function ToChar(Value: Boolean):Char; Overload;
    //to convert to Date type
    function ToDateTime(Value: string):TDateTime ; Overload;
    function ToDateTime(Value: Boolean):TDateTime ; Overload;
    //to convert to Decimal type
    function ToDecimal(Value: string):Currency; Overload;
    function ToDecimal(Value: Boolean):Currency; Overload;
    function ToHour(const Value: TDateTime): string;
    //to convert to integer of 16 bits type
    function ToInt16(Value: string):Smallint; Overload;
    function ToInt16(Value: Boolean):Smallint; Overload;
    //to convert to integer of 32 bits type
    function ToInt32(Value: string):Longint; Overload;
    function ToInt32(Value: Boolean):Longint; Overload;
    //to convert to integer of 64 bits type
    function ToInt64(Value: string):Int64; Overload;
    function ToInt64(Value: Boolean):Int64; Overload;  
  end;


  TConstant = class(TObject)
  private
    FCRLF: String;
  public
    constructor Create;
    property CRLF: String read FCRLF;
  end;

  TDate = class(TObject)
  public
    function EndOfAMonth(const AYear, AMonth: Word): TDateTime;
    function EncodeDate(Year, Month, Day: Word): TDateTime;
    procedure DecodeDate(var Year, Month, Day: Word);
  end;

  { TKnight }

  TKnight = class(TObject)
  private
    FConvert: TConvert;
    FDate: TDate;
    FDraw: TDraw;
    FPut: TPut;
    FStr: TStr;
    FCons: TConstant;
    FUserDlg: TUserDialog;
    FValidate: TValidate;
    class var
     FInstance: TObject;
  public
    Data: String;
    constructor Create;
    class function NewInstance: TObject; override;
    procedure FreeInstance; override;
    property Convert: TConvert read FConvert;
    property Date: TDate read FDate;
    property Draw: TDraw read FDraw;
    property Put: TPut read FPut;
    property Str: TStr read FStr;
    property Cons: TConstant read FCons;
    property UserDlg: TUserDialog read FUserDlg;
    property Validate: TValidate read FValidate;
  end;

var Knt: TKnight;
  Bool: TBool;

implementation

uses SysUtils, Messages, Dialogs, Forms, Windows, DateUtils, StrUtils;

{ TPut }

function TPut.FillLeft(text: string; times: integer; chr: char): string;
begin

end;

function TPut.FillLeft(text: string; times: integer): string;
begin

end;

function TPut.FillRight(text: string; times: integer; chr: char): string;
begin

end;

function TPut.FillRight(text: string; times: integer): string;
begin

end;

{ TValidate }

function TValidate.CPF(Value: string): Boolean;
begin

end;

function TValidate.CNPJ(Value: string): Boolean;
begin

end;

{ TBool }

function TBool.GetTrueString: string;
const
  TRUESTR = 'True';
begin
  Result := TRUESTR;
end;

function TBool.GetFalseString: string;
const
  FALSESTR = 'False';
begin
  Result := FALSESTR;
end;

{ TConvert }

function TConvert.ToString(double: Double): string;
begin

end;

function TConvert.ToString(Value: Boolean): string;
begin

end;

function TConvert.ToBoolean(Value: integer): boolean;
begin

end;

function TConvert.ToBoolean(Value: double): boolean;
begin

end;

{
Parameters
value
Type: double
The number to convert. 
Return Value

Type: boolean
true if value is not zero; otherwise, false.
}
function ToBoolean(Value: double): boolean;
begin

end;

{value
Type: string
A string that contains the value of either TrueString or FalseString. 
Return Value

Type: Boolean
true if value equals Truestring, or false if value equals Falsestring or null.}
function TConvert.ToBoolean(Value: string): boolean;
begin
  Value := Trim(Value);
  //TODO: To create a exception for easilier utilization
  if (Value <> Bool.TrueString) and (Value <> Bool.FalseString) then
    raise Exception.CreateFmt('Value was not recognized as a valid variable',[]);

  if Value = Bool.TrueString then
    Result := True;

  if Value = Bool.FalseString then
    Result := False;

end;

function TConvert.ToByte(Value: string): Byte;
begin

end;

function TConvert.ToByte(Value: Boolean): Byte;
begin

end;

function TConvert.ToChar(Value: string): Char;
begin

end;

function TConvert.ToChar(Value: Boolean): Char;
begin

end;

function TConvert.ToDateTime(Value: string): TDateTime;
begin

end;

function TConvert.ToDateTime(Value: Boolean): TDateTime;
begin

end;

function TConvert.ToDecimal(Value: Boolean): Currency;
begin

end;

function TConvert.ToDecimal(Value: string): Currency;
begin

end;

function TConvert.ToHour(const Value: TDateTime): string;
begin
  Result := FormatDateTime('hh:nn:ss', Value);
end;

function TConvert.ToInt16(Value: string): Smallint;
begin

end;

function TConvert.ToInt16(Value: Boolean): Smallint;
begin

end;

function TConvert.ToInt32(Value: Boolean): Longint;
begin

end;

function TConvert.ToInt32(Value: string): Longint;
begin

end;

function TConvert.ToInt64(Value: string): Int64;
begin

end;

function TConvert.ToInt64(Value: Boolean): Int64;
begin

end;

function TConvert.ToString(date: TDateTime): string;
begin

end;

function TConvert.ToWord(Value: Boolean): Byte;
begin

end;

function TConvert.ToWord(Value: string): Byte;
begin

end;

{ TKnight }

constructor TKnight.Create;
begin
end;

class function TKnight.NewInstance: TObject;
begin
  if not Assigned(FInstance) then
  begin
    FInstance := inherited NewInstance;
    TKnight(FInstance).FConvert := TConvert.Create;
    TKnight(FInstance).FPut := TPut.Create;
    TKnight(FInstance).FValidate := TValidate.Create;
    TKnight(FInstance).FDraw := TDraw.Create;
    TKnight(FInstance).FCons := TConstant.Create;
    TKnight(FInstance).FUserDlg := TUserDialog.Create;
    TKnight(FInstance).FStr := TStr.Create;
    TKnight(FInstance).FDate := TDate.Create;
  end;
  Result := FInstance
end;

procedure TKnight.FreeInstance;
begin
  if Assigned(FInstance) then
  begin
    FreeAndNil(FInstance);
    FConvert.Free;
    FPut.Free;
    FValidate.Free;
    FDraw.Free;
    FStr.Free;
    FDate.Free;
  end;
  inherited FreeInstance;
end;

{ TDraw }

function TDraw.Line(x, y: integer): TCanvas;
begin

end;

function TDraw.Rectangle(topline, bottomline, leftline, rightline: integer): TCanvas;
begin

end;

{ TUserDialog }

function TUserDialog.ConfirmationYesNo(const Text, Title: string): Boolean;
begin
  result := (Application.MessageBox(pchar(Text), pchar(Title),
    MB_ICONINFORMATION or MB_YESNO or MB_TOPMOST or MB_DEFBUTTON1) = idYes);
end;

function TUserDialog.ConfirmationYesNo(const Text, Title: string; const
    IsValid: Boolean): Boolean;
begin
  Result := IsValid;
  if IsValid then
  begin
    result := (Application.MessageBox(pchar(Text), pchar(Title),
      MB_ICONINFORMATION or MB_YESNO or MB_TOPMOST or MB_DEFBUTTON1) = idYes);
  end;
end;

procedure TUserDialog.ErrorOK(const Text: string);
begin
  Application.MessageBox(pchar(Text), pchar(Application.Title), MB_ICONSTOP or
    MB_OK or MB_TOPMOST or MB_DEFBUTTON1);
end;

function TUserDialog.ConfirmationYesNo(const Text: string): Boolean;
begin
  result := (Application.MessageBox(pchar(Text), pchar(Application.Title),
    MB_ICONINFORMATION or MB_YESNO or MB_TOPMOST or MB_DEFBUTTON1) = idYes);
end;

procedure TUserDialog.ErrorOK(const Text, Title: string);
begin
  Application.MessageBox(pchar(Text), pchar(Title), MB_ICONSTOP or MB_OK or
    MB_TOPMOST or MB_DEFBUTTON1);
end;

procedure TUserDialog.WarningOK(const Text: string);
begin
  Application.MessageBox(pchar(Text) , pchar(Application.Title), MB_ICONWARNING or
    MB_OK or MB_TOPMOST or MB_DEFBUTTON1);
end;

procedure TUserDialog.WarningOK(const Text, Title: string);
begin
  Application.MessageBox(pchar(Text) , pchar(Title), MB_ICONWARNING or
    MB_OK or MB_TOPMOST or MB_DEFBUTTON1);
end;

constructor TConstant.Create;
begin
  FCRLF := #13#10;
end;

function TStr.AppDirectory: string;
begin
  Result := ExtractFilePath(Application.ExeName);
end;

function TStr.CaseStr(const AText: string; const AValues: array of string):
    Integer;
begin
  Result := AnsiIndexStr(AText, AValues);
end;

function TStr.LeftFit(Text: string; Count: Smallint; Ch: Char): string;
begin
  if (Count > 0) and (Length(Text) > Count) then
     Result := Copy(Text, 1, Count)
  else
     Result := StringOfChar(Ch, Count - length(Text)) + Text;
end;

function TStr.LeftFit(Value: Currency; Count: Smallint; Ch: Char;
  Masc: string): string;
begin
  Result := LeftFit(FormatFloat(Masc, Value), Count, Ch);
end;

function TStr.padL(const AString: AnsiString; const Len: Integer;
  const Caracter: AnsiChar): AnsiString;
begin

end;

function TStr.RemovePoint(Str: string): string;
begin

end;

function TStr.RepeatChar(Len: Integer; Char: char): string;
begin

end;

function TStr.Replace(const Str, OldPattern, NewPattern: string): string;
begin
  Result := StringReplace(Str, OldPattern, NewPattern, [rfReplaceAll,
    rfIgnoreCase]);
end;

function TStr.Right(const Str: string; const Count: Integer): string;
begin
  Result := StrUtils.RightStr(Str, Count);
end;

function TStr.RightFit(Text: string; Count: Smallint; Ch: Char): string;
begin
  if (Count > 0) and (Length(Text) > Count) then
     Result := Copy(Text, 1, Count)
  else
     Result := Text + StringOfChar(Ch, Count - Length(Text));
end;

function TStr.RightFit(Value: Currency; Count: Smallint; Ch: Char;
  Masc: string): string;
begin
  Result := RightFit(FormatFloat(Masc, Value), Count, Ch);
end;

function TStr.Trans(Str, Char, CharS: string): string;
begin

end;

{ TDate }

procedure TDate.DecodeDate(var Year, Month, Day: Word);
begin
  SysUtils.DecodeDate(Now, Year, Month, Day);
end;

function TDate.EncodeDate(Year, Month, Day: Word): TDateTime;
begin
  Result := SysUtils.EncodeDate(Year, Month, Day);
end;

function TDate.EndOfAMonth(const AYear, AMonth: Word): TDateTime;
begin
  Result := DateUtils.EndOfAMonth(AYear, AMonth);
end;

initialization
  knt := TKnight.Create;

end.
