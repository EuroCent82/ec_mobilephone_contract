Config = {}

Config.Locale = 'de'
Config.Appname = 'EC - Mobilephone Contract'

Config.MobilephoneContract.Pay = 500 --500$ Example
Config.MobilephoneContract.Period = (60 * 60000) --all 60 Minutes pay

Config.MobilephoneContract.NotificationPicture = 'CHAR_CHAT_CALL' --https://wiki.gtanet.work/index.php?title=Notification_Pictures
Config.MobilephoneContract.Title = 'Mobilephone Contract'
Config.MobilephoneContract.Subtitle = 'Fees Paid'
Config.MobilephoneContract.Message = 'You have paid ~r~' .. Config.MobilephoneContract.Pay .. '$ ~s~for your ~g~mobile phone contract.'
Config.MobilephoneContract.Bank.Name = 'bank',
Config.MobilephoneContract.ItemName = 'phone',