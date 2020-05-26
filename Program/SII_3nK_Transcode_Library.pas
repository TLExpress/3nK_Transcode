{-------------------------------------------------------------------------------

  This Source Code Form is subject to the terms of the Mozilla Public
  License, v. 2.0. If a copy of the MPL was not distributed with this
  file, You can obtain one at http://mozilla.org/MPL/2.0/.

-------------------------------------------------------------------------------}
unit SII_3nK_Transcode_Library;

{$INCLUDE '..\Source\SII_3nK_defs.inc'}

interface

uses
  SysUtils,
  Classes,
  SII_3nK_Transcoder;

Function Is3nKStream(Stream: TStream): Boolean; cdecl;
Function Is3nKFile(const FileName: String): Boolean; cdecl;
procedure EncodeStream(Input, Output: TStream; InvariantOutput: Boolean = False); cdecl;
procedure DecodeStream(Input, Output: TStream; InvariantOutput: Boolean = False); cdecl;
procedure TranscodeStream(Input, Output: TStream; InvariantOutput: Boolean = False); cdecl;
procedure DecodeFile(const InFileName, OutFileName: String); cdecl;
procedure EncodeFile(const InFileName, OutFileName: String); cdecl;
procedure TranscodeFile(const InFileName, OutFileName: String); cdecl;
procedure DecodeFileInMemory(const InFileName, OutFileName: String); cdecl;
procedure EncodeFileInMemory(const InFileName, OutFileName: String); cdecl;
procedure TranscodeFileInMemory(const InFileName, OutFileName: String); cdecl;

implementation

Function Is3nKStream(Stream: TStream): Boolean; cdecl;
begin
	with TSII_3nK_Transcoder.Create do
	Result := Is3nKStream(Stream);
end;

Function Is3nKFile(const FileName: String): Boolean; cdecl;
begin
	with TSII_3nK_Transcoder.Create do
	Result := Is3nKFile(FileName);
end;

procedure EncodeStream(Input, Output: TStream; InvariantOutput: Boolean = False); cdecl;
begin
	with TSII_3nK_Transcoder.Create do
	EncodeStream(Input, Output, InvariantOutput);
end;

procedure DecodeStream(Input, Output: TStream; InvariantOutput: Boolean = False); cdecl;
begin
	with TSII_3nK_Transcoder.Create do
	DecodeStream(Input, Output, InvariantOutput);
end;

procedure TranscodeStream(Input, Output: TStream; InvariantOutput: Boolean = False); cdecl;
begin
	with TSII_3nK_Transcoder.Create do
	TranscodeStream(Input, Output, InvariantOutput);
end;

procedure DecodeFile(const InFileName, OutFileName: String); cdecl;
begin
	with TSII_3nK_Transcoder.Create do
	DecodeFile(InFileName, OutFileName);
end;

procedure EncodeFile(const InFileName, OutFileName: String); cdecl;
begin
	with TSII_3nK_Transcoder.Create do
	EncodeFile(InFileName, OutFileName);
end;

procedure TranscodeFile(const InFileName, OutFileName: String); cdecl;
begin
	with TSII_3nK_Transcoder.Create do
	TranscodeFile(InFileName, OutFileName);
end;

procedure DecodeFileInMemory(const InFileName, OutFileName: String); cdecl;
begin
	with TSII_3nK_Transcoder.Create do
	DecodeFileInMemory(InFileName, OutFileName);
end;

procedure EncodeFileInMemory(const InFileName, OutFileName: String); cdecl;
begin
	with TSII_3nK_Transcoder.Create do
	EncodeFileInMemory(InFileName, OutFileName);
end;

procedure TranscodeFileInMemory(const InFileName, OutFileName: String); cdecl;
begin
	with TSII_3nK_Transcoder.Create do
	TranscodeFileInMemory(InFileName, OutFileName);
end;

exports Is3nKStream;
exports Is3nKFile;
exports EncodeStream;
exports DecodeStream;
exports TranscodeStream;
exports DecodeFile;
exports EncodeFile;
exports TranscodeFile;
exports DecodeFileInMemory;
exports EncodeFileInMemory;
exports TranscodeFileInMemory;

end.
