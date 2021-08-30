require("Conf/DefaultConfigs")

function LoadPacker ()
    local status_ok, packer = pcall(require,"packer")
    if not status_ok then
        print "Packer Not Found"
        return
    end
    require("Plugins/PackerLoad").LoadPacker(packer)
end

LoadPacker()
