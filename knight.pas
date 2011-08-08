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
    //It validate the brazilian ID
    function CPF(Value: string): Boolean;
    function CNPJ(Value: string): Boolean;
  end;

  { TPut }

  TPut = class(TObject)
  private
    //It put a char for n times at left string
    function FillLeft(text: string; times: integer; chr: char): string; overload;
    function FillLeft(text: string; times: integer): string; overload;
    //It put a char for n times at right string
    function FillRight(text: string; times: integer; chr: char): string; overload;
    function FillRight(text: string; times: integer): string; overload;
  public
    
  end;

  { TConvert }

  TConvert = class(TObject)
  private

  public
    //to convert to string type
    function Tostring(double: Double): string; overload;
    function Tostring(Value: Boolean): string; overload;
    function Tostring(date: TDateTime): string; overload;
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


  TConst = class(TObject)
  private
    FCRLF: String;
  public
    constructor Create;
    property CRLF: String read FCRLF;
  end;

  { TKnight }

  TKnight = class(TObject)
  private
    FCnst: TConst;
    FConvert: TConvert;
    FDraw: TDraw;
    FPut: TPut;
    FUserDlg: TUserDialog;
    FValidate: TValidate;
    class var
     FInstance: TObject;
  public
    Data: String;
    constructor Create;
    class function NewInstance: TObject; override;
    procedure FreeInstance; override;
    property Cnst: TConst read FCnst;
    property Convert: TConvert read FConvert;
    property Draw: TDraw read FDraw;
    property Put: TPut read FPut;
    property UserDlg: TUserDialog read FUserDlg;
    property Validate: TValidate read FValidate;
  end;


var Knt: TKnight;
  Bool: TBool;

implementation

uses SysUtils, Messages, Dialogs, Forms, Windows;

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

function TConvert.Tostring(double: Double): string;
begin

end;

function TConvert.Tostring(Value: Boolean): string;
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

function TConvert.Tostring(date: TDateTime): string;
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
  if (not Assigned(Self.FInstance)) then
  begin
    Self.FInstance := inherited NewInstance;
    TKnight(Self.FInstance).FConvert := TConvert.Create;
    TKnight(Self.FInstance).FPut := TPut.Create;
    TKnight(Self.FInstance).FValidate := TValidate.Create;
    TKnight(Self.FInstance).FDraw := TDraw.Create;
    TKnight(Self.FInstance).FCnst := TConst.Create;
    TKnight(Self.FInstance).FUserDlg := TUserDialog.Create;
  end;
  Result := Self.FInstance
end;

procedure TKnight.FreeInstance;
begin
  if Assigned(Self.FInstance) then
  begin
    FreeAndNil(Self.FInstance);
    // Destroy private variables here
    self.Convert.Free;
    self.Put.Free;
    self.Validate.Free;
    self.Draw.Free;
    inherited FreeInstance;
  end;
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
  Application.MessageBox(pchar(Text), pchar(Application.Title), MB_ICONSTOP or
    MB_OK or MB_TOPMOST or MB_DEFBUTTON1);
end;

procedure TUserDialog.WarningOK(const Text, Title: string);
begin
    Application.MessageBox(pchar(Text) , pchar(Title), MB_ICONWARNING or
      MB_OK or MB_TOPMOST or MB_DEFBUTTON1);
end;

constructor TConst.Create;
begin
  Self.FCRLF := #13#10;
end;

initialization
  knt := TKnight.Create;

end.
