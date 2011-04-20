unit Knight;

interface
type

  TUserDialog = class(TObject)
  private

  public
    procedure WarningOK(text:string);
    procedure ErrorOK(text:string);
    function ConfirmationYesNo(text:string):Boolean;
  end;
  
  TDraw = class(TObject)
  private
    function Line(x,y:integer):TCanvas;  
    function Rectangle(topline, bottomline, leftline, rightline):TCanvas;
  public
    
  end;

  TValidate = class(TObject)
  private

  public
    //It validate the brazilian ID
    function CPF(CPF:string):boolean;
    function CNPJ(CNPJ:string):boolean;
  end;
  TPut = class(TObject)
  private
    //It put a char for n times at left string
    function FillLeft(text:string; times:integer; chr:char):string; overload;
    function FillLeft(text:string; times:integer):string; overload;
    //It put a char for n times at right string
    function FillRight(text:string; times:integer; chr:char):string; overload;
    function FillRight(text:string; times:integer):string; overload;
  public
    
  end;
  TConvert = class(TObject)
  private
    
  public
    //to convert to string type
    function ToString(double : Double):string; overload;
    function ToString(bool : Boolean):string; overload;
    function ToString(date : TDateTime):string; overload;
    //to convert to boolean type
    function ToBoolean(str : string) : boolean; overload;
    function ToBoolean(int : integer) : boolean; overload;
    //to convert to Byte type
    function ToByte(str:string):Byte; Overload;
    function ToByte(bool:Boolean):Byte; Overload;
    //to convert to Word type
    function ToWord(str:string):Byte; Overload;
    function ToWord(bool:Boolean):Byte; Overload;
    //to convert to Char type
    function ToChar(str:string):Char; Overload;
    function ToChar(bool:Boolean):Char; Overload;
    //to convert to Date type
    function ToDateTime(str:string):TDateTime ; Overload;
    function ToDateTime(bool:Boolean):TDateTime ; Overload;
    //to convert to Decimal type
    function ToDecimal(str:string):Currency; Overload;
    function ToDecimal(bool:Boolean):Currency; Overload;
    //to convert to integer of 16 bits type
    function ToInt16(str:string):Smallint; Overload;
    function ToInt16(bool:Boolean):Smallint; Overload;
    //to convert to integer of 32 bits type
    function ToInt32(str:string):Longint; Overload;
    function ToInt32(bool:Boolean):Longint; Overload;
    //to convert to integer of 64 bits type
    function ToInt64(str:string):Int64; Overload;
    function ToInt64(bool:Boolean):Int64; Overload;  
  end;
  
  TKnight = class(TObject)
  private
    Convert : TConvert;
    Put : TPut; 
    Validate : TValidate;
    Draw : TDraw; 
  public
    constructor Create;
  end;
  
implementation

{ TConvert }

function TConvert.ToString(double: Double): string;
begin

end;

function TConvert.ToString(bool: Boolean): string;
begin

end;

function TConvert.ToBoolean(int: integer): boolean;
begin

end;

function TConvert.ToBoolean(str: string): boolean;
begin

end;

function TConvert.ToByte(str: string): Byte;
begin

end;

function TConvert.ToByte(bool: Boolean): Byte;
begin

end;

function TConvert.ToChar(str: string): Char;
begin

end;

function TConvert.ToChar(bool: Boolean): Char;
begin

end;

function TConvert.ToDateTime(str: string): TDateTime;
begin

end;

function TConvert.ToDateTime(bool: Boolean): TDateTime;
begin

end;

function TConvert.ToDecimal(bool: Boolean): Currency;
begin

end;

function TConvert.ToDecimal(str: string): Currency;
begin

end;

function TConvert.ToInt16(str: string): Smallint;
begin

end;

function TConvert.ToInt16(bool: Boolean): Smallint;
begin

end;

function TConvert.ToInt32(bool: Boolean): Longint;
begin

end;

function TConvert.ToInt32(str: string): Longint;
begin

end;

function TConvert.ToInt64(str: string): Int64;
begin

end;

function TConvert.ToInt64(bool: Boolean): Int64;
begin

end;

function TConvert.ToString(date: TDateTime): string;
begin

end;

function TConvert.ToWord(bool: Boolean): Byte;
begin

end;

function TConvert.ToWord(str: string): Byte;
begin

end;

{ TKnight }

constructor TKnight.Create;
begin
  self.Convert := TConvert.Create;
  self.Put := TPut.Create;
  self.Validate := TValidate.Create;
  self.Draw := TDraw.Create;
end;

{ TDraw }

function TDraw.Line(x, y: integer): TCanvas;
begin

end;

function TDraw.Rectangle(topline, bottomline, leftline, rightline): TCanvas;
begin

end;

{ TUserDialog }

function TUserDialog.ConfirmationYesNo(text: string): Boolean;
begin

end;

procedure TUserDialog.ErrorOK(text: string);
begin

end;

procedure TUserDialog.WarningOK(text: string);
begin

end;

end.