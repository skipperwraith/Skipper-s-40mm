function Merge(t1, t2) for k, v in pairs(t2) do t1[k] = v end end

Merge(Device,
{
	munitionssw = L"Fabrique de munition de Skipper",
	munitionsswTip2 = L"Débloque: Canons 40mm",
	munitionsswTip3 = L"Requiert: Munitions",
})
