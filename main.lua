--Uncomment the following line if this is a Cheat Table format trainer and you don't want CE to show (Tip, save as .CETRAINER alternatively)
--hideAllCEWindows()

RequiredCEVersion=7.4
if (getCEVersion==nil) or (getCEVersion()<RequiredCEVersion) then
  messageDialog('Please install Cheat Engine '..RequiredCEVersion, mtError, mbOK)
  closeCE()
end
getAutoAttachList().add("EoCApp.exe")
--these where throwing an error so they have been commented
--addresslist=getAddressList()
--memrec0=addresslist.getMemoryRecordByID(0)

--Varibles
local app = "EoCApp.exe"
local rax = "2959898"
local baseAddress = "[" .. app .. "+" .. rax .. "]"
local offsetMin = "C40"
local offsetMinn = "C4C"
local offsetMax = "C44"
local offsetMaxx = "C48"
local offsetFOV = "C74"
local scrollSpeed = "C6C"
local zoomSpeed = "C30"
local pitchMin = "CCC"
local pitchMax = "CC0"
local pitchMinC = "CE4"
local pitchMaxC = "CD8"
local camAngle1 = "CC8"
local camAngle2 = "CD0"

--reads values from game to be show in left most text boxes
function ButtonReadClick(sender)
  setProperty(UDF1.ReadMin,"Text", readFloat(baseAddress .. offsetMin))
  setProperty(UDF1.ReadMin1,"Text", readFloat(baseAddress .. offsetMinn))
  setProperty(UDF1.ReadMax1,"Text", readFloat(baseAddress .. offsetMax))
  setProperty(UDF1.ReadMax2,"Text", readFloat(baseAddress .. offsetMaxx))
end

--sets in game values with right minimum text box
function ButtonSetMinClick(sender)
  writeFloat(baseAddress .. offsetMin, getProperty(UDF1.SetMinVal,"Text"))
  writeFloat(baseAddress .. offsetMinn, getProperty(UDF1.SetMinVal,"Text"))
end

--sets in game values with right maximum text box
function ButtonSetMaxClick(sender)
  writeFloat(baseAddress .. offsetMax, getProperty(UDF1.SetMaxVal,"Text"))
  writeFloat(baseAddress .. offsetMaxx, getProperty(UDF1.SetMaxVal,"Text"))
end

--sets both text boxes to default values then applies them to game to reset to defaults
function ButtonDefaults(sender)
  UDF1.SetMinVal.Text = '5.5'
  UDF1.SetMaxVal.Text = '19'
  writeFloat(baseAddress .. offsetMin, getProperty(UDF1.SetMinVal,"Text"))
  writeFloat(baseAddress .. offsetMinn, getProperty(UDF1.SetMinVal,"Text"))
  writeFloat(baseAddress .. offsetMax, getProperty(UDF1.SetMaxVal,"Text"))
  writeFloat(baseAddress .. offsetMaxx, getProperty(UDF1.SetMaxVal,"Text"))
end

--read fov
function ButtonFOVReadClick(sender)
  setProperty(UDF1.FOVEdit,"Text", readFloat(baseAddress .. offsetFOV))
end
--write fov
function ButtonFOVSetClick(sender)
  writeFloat(baseAddress .. offsetFOV, getProperty(UDF1.FOVEdit,"Text"))
end
--reset fov
function ButtonFOVResetClick(sender)
  UDF1.FOVEdit.Text = '45'
  writeFloat(baseAddress .. offsetFOV, getProperty(UDF1.FOVEdit,"Text"))
end


--Scroll Speed
function ButtonScrSpdSet(sender)
  writeFloat(baseAddress .. scrollSpeed, getProperty(UDF1.ScrollSpeedEdit,"Text"))
end

function ButtonScrSpdRead(sender)
  setProperty(UDF1.ScrollSpeedEdit,"Text", readFloat(baseAddress .. scrollSpeed))
end

function ButtonScrSpdReset(sender)
  UDF1.ScrollSpeedEdit.Text = "1.125"
  writeFloat(baseAddress .. scrollSpeed, getProperty(UDF1.ScrollSpeedEdit,"Text"))
end

--Zoom Speed
function ButtonZmSpdSet(sender)
  writeFloat(baseAddress .. zoomSpeed, getProperty(UDF1.ZoomSpeedEdit,"Text"))
end

function ButtonZmSpdRead(sender)
  setProperty(UDF1.ZoomSpeedEdit,"Text", readFloat(baseAddress .. zoomSpeed))
end

function ButtonZmSpdReset(sender)
  UDF1.ZoomSpeedEdit.Text = "8"
  writeFloat(baseAddress .. zoomSpeed, getProperty(UDF1.ZoomSpeedEdit,"Text"))
end

--Pitch Min
function ButtonPchMinSet(sender)
  writeFloat(baseAddress .. pitchMin, getProperty(UDF1.PitchMinEdit,"Text"))
end

function ButtonPchMinRead(sender)
  setProperty(UDF1.PitchMinEdit,"Text", readFloat(baseAddress .. pitchMin))
end

function ButtonPchMinReset(sender)
  UDF1.PitchMinEdit.Text = "0.54"
  writeFloat(baseAddress .. pitchMin, getProperty(UDF1.PitchMinEdit,"Text"))
end

--Pitch Max
function ButtonPchMaxSet(sender)
  writeFloat(baseAddress .. pitchMax, getProperty(UDF1.PitchMaxEdit,"Text"))
end

function ButtonPchMaxRead(sender)
  setProperty(UDF1.PitchMaxEdit,"Text", readFloat(baseAddress .. pitchMax))
end

function ButtonPchMaxReset(sender)
  UDF1.PitchMaxEdit.Text = "0.72"
  writeFloat(baseAddress .. pitchMax, getProperty(UDF1.PitchMaxEdit,"Text"))
end

--Pitch Min C
function ButtonPchMinCSet(sender)
  writeFloat(baseAddress .. pitchMinC, getProperty(UDF1.PitchMinCEdit,"Text"))
end

function ButtonPchMinCRead(sender)
  setProperty(UDF1.PitchMinCEdit,"Text", readFloat(baseAddress .. pitchMinC))
end

function ButtonPchMinCReset(sender)
  UDF1.PitchMinCEdit.Text = "0.54"
  writeFloat(baseAddress .. pitchMinC, getProperty(UDF1.PitchMinCEdit,"Text"))
end

--Pitch Max C
function ButtonPchMaxCSet(sender)
  writeFloat(baseAddress .. pitchMaxC, getProperty(UDF1.PitchMaxCEdit,"Text"))
end

function ButtonPchMaxCRead(sender)
  setProperty(UDF1.PitchMaxCEdit,"Text", readFloat(baseAddress .. pitchMaxC))
end

function ButtonPchMaxCReset(sender)
  UDF1.PitchMaxCEdit.Text = "0.76"
  writeFloat(baseAddress .. pitchMaxC, getProperty(UDF1.PitchMaxCEdit,"Text"))
end

--Camera Angle
function ButtonCamAngSet(sender)
  writeFloat(baseAddress .. camAngle1, getProperty(UDF1.CameraAngleEdit,"Text"))
end

function ButtonCamAngRead(sender)
  setProperty(UDF1.CameraAngleEdit,"Text", readFloat(baseAddress .. camAngle1))
end

function ButtonCamAngReset(sender)
  UDF1.CameraAngleEdit.Text = "30"
  writeFloat(baseAddress .. camAngle1, getProperty(UDF1.CameraAngleEdit,"Text"))
end

--Camera Angle
function ButtonCamAng2Set(sender)
  writeFloat(baseAddress .. camAngle2, getProperty(UDF1.CameraAngle2Edit,"Text"))
end

function ButtonCamAng2Read(sender)
  setProperty(UDF1.CameraAngle2Edit,"Text", readFloat(baseAddress .. camAngle2))
end

function ButtonCamAng2Reset(sender)
  UDF1.CameraAngle2Edit.Text = "-0.3"
  writeFloat(baseAddress .. camAngle2, getProperty(UDF1.CameraAngle2Edit,"Text"))
end

getAutoAttachList().add("EoCApp.exe")
gPlaySoundOnAction=false
--these where throwing an error so they have been commented
--CETrainer.SEPERATOR.Visible=false
UDF1.fixDPI() --remove this if you have already taken care of DPI issues yourself
UDF1.show()
--function AboutClick()
--  showMessage(gAboutText)
--end
--gAboutText=[[Beans]]

function CloseClick()
  --called by the close button onClick event, and when closing the form
  closeCE()
  return caFree --onClick doesn't care, but onClose would like a result
end
