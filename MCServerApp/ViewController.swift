//
//  ViewController.swift
//  MCServerApp
//
//  Created by KELSEY COLLINS on 12/1/22.
//

import UIKit

let defaultIcon = "data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAIAAAACACAAAAADmVT4XAAAABGdBTUEAALGPC/xhBQAAGrpJREFUeNrtelnPLddx3aph7+4+53zTHTlZomkJsSzLNmxnRoAAecgAJEAenX+Qh7znr+RPJHYebMBOgCCyYht2LMuSLUWkKEqkyMt77zedqXsPVZWHK1o2LZIyFYQP1n5onNN9+tTqXWuvql3V9F/wyQ7GTwD8BMBPAPwEwE8A/ATAJzyUfuKCv/Uc+ORMDykPOX1SAO5MI32iLpjGT5wD9Ld8FZRPWgmdAKB0+6RWQT/Y4u2T0QHOOWV5/EkIEeeccn5Gu9Xx/y8A3WjKf5nxp38TAK/97i+nbs8992MAGC/ed0JOtz8qgPnt3+y/TXX1uR8HQP9rZ9Z7/5EAbL/66tsr65soh9/82Vf+3/mkhfxoAL7zB2XYcSpzei3td7/441s2a72ZvSfGHyVEN3/UyXJvF62kfPXqL/0Yyu+9W7P2N8wHdp9+S8w53SBxipc/9nPXp90/Viw4eZOCBXHayPfljUevAo8/lvQenH74+K8ffuObf/qHyZRqZht50nfurDbllz7/cSDI+yabLOARH+WC05pAnWnYwak0ul2+9wv7j0c+kmcfIgJO9iNyoITlPQNHSbZB76cWrw/vXTzuL4/3P/WDH7+bd8/93v4XdxfP/XApoIiI+JuRML/w2szi5JaUaoa1YL49w/eub28ed1r8xSc//31AZf76q9vod7/10vlzP6IYAZBf+wgJfenz81WqIjrE/R7D3NSu37mff+Mbl3slchqvvwu8bWvAfuvR08bjfkz+ioCHYXWyuTMV/whq/NpHqvjn3mq91XVO5dgLc8vYv/pn9YTlUE4rl0Psv/6NR+0+fy89foJxZ9Tj9FMPTlbTmBSuzX9MAMBPnZx9exjBh8RNKTropGrBoGds4ZY0nS2HN+9NV19jicSEcv3lX9FnQuc+RP9QAP+OPnxs2zC9+J03x5df3u8smLgmtcRTb9uUH9eHs6taG/b01Te+HBZeLcA7PX46PaO8UW7xIf//ESQs337CN/GFZDG/fQkthIrl5DnGTtrULNMsKZHPh/uP3zZ1Y6BLlKm9fTsCQDcAbB93a7aPJ69+O53KF2+YHxPVAuIsunISOZGSyOjAfXOLO7vlaW7oRAGpWelsPx979JvbwxesyMeuDzz+8lvy3GJPb8mtxTDIoqr3e7KF+amMNXui5XS27ulxFDV0kq6t19VYcARefef1/e/+3PSLH2iDVT50Bn73iWJ/XIIwiWNZy7Dn3IU0RbjYves89IG5kreWIkA5jqu5j9jc/3wiPPr6/7Hxav3T8ddCY6KEjESgD3fBxq6npEybhbCICmy6wDTHTGNL3DvaVOvkq842nj19OqfmqXSep37neQDvfh0205/tf+bsPVWDsrLIXw7SHwqgLhQ79+Du01ixnJxIuCmNY1staVjqAzvt08Lrzglr04OsqZ7U9Umfa0T587PH7Jaf/Od/85KwUvqhu8MPBXD3mB7c3p6EpR6yGUkkz3nLNddkZcVL59vDxU33s305wcp0XY/x4Fz4pX8Kf+u3huOVQ4jnd3/9337uA8P0hwI4eDfSaHPOex/KiRVvtOqUWhNdiB/OOk1EVl3qujblDh0eFvBG+I1X/pAou6HwcXnrc/irRDS4w2Dx4avgV3+rHfod3+pE5zeTubsUqSKHbLn40Hzen9xiuVfquLpOLzw9kHPy7fptDLj3h2OBu4tCtvn7jxvo8Aj7UXXgU6az5dajTOtdQ4LLhESxadoms26rcVzanejRD90PwxxhYc/Pq1//+5+Z67rozFyyk0gLg8f7SgMfCeD6i+d8hdru1Lk/UeoVUcvJEroIW22T3bSzY+Fpp7rZ6r1jv/M4jRZ9S63L+frmGKZksSmnV+WDY8G/F8QHXHv7j10WMu9SO0stWpFAHMTmg4qNJppoYC9j786XTufSNR/j/Hz7Gv7x+evP292y/gc/9Uv//GdBwA93tnLOsNZ/SMT6X29cLDLsc5VYzUy2qUMLoYCrdBwym1Y68vpAQzqqrFrmdJrI7z+6SlL+z5N/+fPH6995Iv8aAMUHIlAAEEH0Xt8vxE/O19GyonftAB8lhMWbrIhgm5k9pWYWra3qdlq95Rt9J4nRatWGui+3//1nHzyP4DLgL+aY4r3DDwAEfV8d0/sBEOMYyQpSCYe5YOMu1oTEvc8pHYDGYRXTburr8HVZS0GUYby2M5/f+Vq+s6WweZC/sEnPDj/4Huzmz+j5fia8e2DKy/xQY4nEACfpiaI5JDrzJs3Wl9wCHHUAnjxdjrvygJvoZbnbFlkdzvzpjo8nm0FBRETMoqpETHgvGwDpG6uHiACI3ueity6Dsg89RLg7hyFJA+SMmqSeO7D2MEkxde5SMSTo8hTKxS5PT275IPz8u3fn41ufBhRB71GA7K+Qgb/9BgAiarv3zUBEwj68sqAGldCcnBDJSbyTUazChdj3ZUyt38syRyHtMUM16KGvnz9bJDanv3n4/txHuLvZ+1JEnesyEYAI/AH1l36Q5ZuirY6gCTuoKQcgBQ9u1UioC4B0XCz3dFx7WOl1RaZJiFVj8F0vp3teLqQcvvR3z35YhfI9Hfhn/D3dRO/23a+0HrtHu5szIQHRo+/WjVUZadUgnIlTp6NFODtDLdgkgtUbyOg0g7IMqx4uvi6TzDwmKzw04zff6C99SE54c9cfXwDAZSNHLa3ZwwsH2h8JIVpZprIq2UwQuXDNLUU3ilCDawKlxbdjy1vDeC3n607LqVcbeoy1QVaX4xDzW6sP3lZzJWEiIjrAmRgLXb1ORO1/SqtH5cyy6lIdQWlfIl1dH1XYg1swQFQzLIuS9qQabK2PqBvsrRVhQlu2Vue3v/KlD5wB+UcrouvHMuHxEgCYyE8fAI9/zzfDPWOyGvsTBCNmA0yRuQmCyJejqJE7CpUTqpr3sRGSFZ+UpN5WuKKNycCmJzjGuXxQ+Sz15dju0KuLMcjYQQfC5ZeKZ8VUu0RB79oodwsJsy4UrgjfEVWOtC9rXhUz5uTHtsQD7JQcGx2nKsvt1Fxu91P6zj85eZ/p5e2nb11v5F9ZrsDdzZ93U3ImV+hWv/iWI7vNQ9oyUYqypK0Fm6uNqxIcEVHCd/vjcfbENvJ6KirajYc1+oyddCyR2nQyC2S1wu7Jw+F9xb/fif9981iHQ13XuB2ToTt18tCFrwoX4tj3p1Sk6zEN0Z0QmAw8Zz2kaLtlXRdPU1V1blt67tbvjSWFonHOLz26aMZ5z9JwsrWTLE9+m+7VB3+pyPTyyzfjYdLHa5lBOykmnSmCFXz85pFH6tot3ZosfdNRk6u082Zy6KvTxM2Bhgjb5uwUNYEhLdEyOMZDjl0kIMTrOvWWSr2mXunm9MGWTv9CD37fPTc5+fb8vJG3VWc5PUSQhpQnrtZWDTj2RTkdNoMAbkkHN0tYVReUNmydghvnIbFb7j1Pdbxok1YioLx7efOm7ZfLfDzO33283d60y7OvfuWbn/2+J25/Y9dhrjOjORMZnDwvQUHfuwK0io+3172pL6JubdNlKrJutHjqroGgptDuaRBMc81kqHWecxiJMevT0ojqcc030uvU7HgmDyNaa886Bf+Nv73lALTg6jvPgYfeIZwWYkODU4wdNYaeqgU7eQ5HqbML22EQng+1ttS9uje7Wl+dTrTZY1V59BM1btqr92lfk+xZJKTwJH47QH2aCABe/WK4cIuQuzFfvj5vtWX2UalFpKsmU0vtthyObnnhsQSjSXYaVhY+9PNymOfmc4/B82qfWxxnhK02tYWOPJQyqCy3RU3UzXHrdViW5jFNc7rzgIjozdfchN1VPoV8Q3Z7kjDkDOsm9al769OjtptDauWxkOFAEmI9Ve6L32LXmyyroXHTmlqMngZvPC4NGz+zCBcupVtvah5RtOcQiNw+f//25eeIiOxbxdBYQs7Jxaay39JqKpKqP/j8NwbqSMvYOS2q3VPxDEpImFisBGk/L3NRcjValIEBrok4I40+JBtWurRHk9d8Si2yB1swelqm0k5/dUNE9M0/NgkgTJ7jipFi1nGp4jL/nS88+tqeQrI99h4RYjLWxESyXqWNJc4IioydQKNTpItKsQyrhJ54jzRiarevP3pn3i9zk9qbW0nuFFaVD8fl+vrieEr02julB4JJxwKmLtO8n9PJutY4Hs522rs/Wh8EuRlyz56XNe1vH86XepLi5CplTHtDWHh9aqmsDJa5E8rG1v693aHFjsmkMlMg+zK25JPMglXt37Kv9vlLy2CWhl7lnovEUBXlQu/psqy/+/uH6uDE0SkW7r0NRzTuInKK1pTYmmm41hkGoeQ4wainJPe5a29kvR6CmxJ5oqreiIejqnuExXx2Mn/ry5ffrehMDoNcmPfVwbzhpundw1n5kxIDO4bNsMkpO9u6KA3rnPNmuJafwiFtDjzwWEIBsbGRdIo2LGr7Q5SSL+u43StLGJuSeg+DODxlR/R6erHdX/SzyxSAOsvdbNMykmr0uHk8X75TRIJFyqIgyYamqcXAEAx8DCqdsWVCv23GiG4ZmYTTauXjAh1UHJ6qBupwWFt0Q2+bzkEVrnFO21O8u+2XMpoTlS7PI5MlNz4kXvqys5Nffl2KdiN3d0NpIN4MeZruqukGsdYQm/wwBxO1gXWgQdOF28neh4h1FFldtZpDe3aE9ohMEWOVHJUDevp2acGE/pKGZyUDJ5fmY1stZxl9/pPzfCz9pEqT1loRPk5DcW+G3Xns+3N7s4nbrpWAek2xhI/kJt3ZGixc90JUowJC1VI0dNeSsrmtD5u1k1Alyyfp2lpTY1/GxoMp/Oy4Y8lPTw8L046re7RIDRMqMk1nT1LKB6LxGq2UYCAnjqRhCSKZXRIGGvY8xv1PL9fr1F7jJb2iE692V48pnru4zZu5L4+vhANk1zcpoHKv2tgO0RZOFMpQyidSzoU01Jy8RQwMk4mO47DEvWMa1M5brQ2QIct4ZCacLmXerUuZ17fN67GePBl9mRcnvNRr0+V4S2noz2duy+NDl706ugl3hWaPYYgxdKIT7qFR8TRR6rTNbYuFg2nGvSUWLV0XG+PxeaZtxZnsdiQxztzvuqyLhCavMaeFPFMegojdnZfxyALR3rt0y6jjPtWRiLSHSWNtQYcpj157shbUKbdYqMlR3RUcqYO5sGTJlbKGcq8V1auM60g1JcrYsj5YLai6cU6nN6RcJTat5QNja+t5poePxTc5dDjkG4IzN1EXY096+pRlJZt9nhSSu2xPnM7yTng8VNQBa6tDZgd1497iXaQoIFFQmVce+7HfbrLQEmiH1jT8vPDu/tUirQjBp73HUu5s4XTtlyfZ956OFOFa2L0k0xNKRDku/DjUcngxvXhzacnnZTO3SkSx06DgojOLLGPNrFcteZEsQRzTGkm2TMeVGjaHjccZ6/bc1kJdRgyRteZFoECIr+vdKx5nsJFYIg+Pgf5hXhKcyoQydrlPXlDvLQcjKSUTEJ0mErFc2VjNjqytxCq6gji4AmdLjTrl2TN0y/daO4ie5su2YyUjhs+FqtRpHKwPDxYqw/UeLVgeVuMqn1GoSqjxEBFDChlPivm652GNFGmgQaN6L2ZeKcd+C6HbvC7dsi051eGEDpJ4GaP7gGHMFjLp8XjsZApHpENvGloTem3nfeG+hwXxeDp+appVCFnJ6mqBnBxW+yx1s76RHkcGUiyTsKztYs99N/BdM5ri3KiXpEp1ECixT30wkI0awZYyzarrJsuIprLU8ezSgxo1JTFtA/dxT2IlKYw2WqkhPMIaxXB7DW6pquoKteZC6cJb2UrudOfNTofxkEvRGO6VA9LpYZls0Yhq6Mc0o2Blt8t4kUqpFxpnZ/NhpbRd24u6pTo+WYaLfpPmM3vwoB7GvKWy3b2gmpKHhGd0CUVqyiumI41LakJ1O5SckUTn9X6eYlQeNWsPcIuZ4EQaM1OIenLKu6xDiRqjLR4tbNHcr9dWZvB2qVVOLgMntjtl9tOb67nKOWPfzOcaR4I3bz1IyWsGuTssUqzNq3n3Eg3obm1rhTwqk1CtNBMQvfLRy0ytY3ExKd6FIERdea040RGGSBStQ/cQmpUPzD5w0H8gxAbiwTDGZ/I7V8mC9bP+rcKf2rz7JMlPH9+k+Kz8mdCLp7F8RdcvNH53C/npN1qML7wWgxGG579lQ5VcX3m7jPnu7rHw/cvGaf1HuZ7UsvHP/WnR/sJO2kkeZdrTfO8Gbdon1Yum0QcHS1fuEyh3V9LUeu6snnwQIu7CIhbch1Px4YSMSB9um43PX5FF8uGFY3EXbs8fq6+eP28c97zbuNktSffzzXDPdj7dcembi5ALwXSPw+5sqTO5Zxh7BDlTV+oKSBRYcGfybGwOpnBiVpLgMNEIYg+T6JkkPBMByUEk5NL7GBJEJgTLuS6c8tXINDpMEVEARzJCjoDewc1RLdjZpQXNDEulnbtwo6GxL+uS2F1LcssdB3S3NJyTb+KFY8+nd0x7PB3oZLhW9PHSAK2IdLi1/dTLIMTrMk5HponpwU3te231Ovcypi2l8UD/UcKlZrbPydtXKp/1725zjySv4BvOD+69fS395/0bzg/uXb6T5GcYj55o//zXvoHjC9Nd+OefPIV94ekj6b/wnZ0Mn/5m1zubN5xe+R9vTYfnttu1DLfpeN/qwnemV8y/eimr/flh3E1yGD3vNpxACSIRzMLBgCeP5EhCGVAVIDEyoK0XwIQyger1k3lbiIlBwuoqZKYICg7rkQFq295aL9brjaxwrN6oJpKkDUc5YK5opdJBCS7qfUBPDmUTgMIG6Wqs3Q2MCo/UGV/X+/u7K7cgMAnITcnCgnp0Do+WwJ0TxDvH+bSk9fWKRls1r9OVUG1UUaxivSTWbqmsZzG1IItcCqSnHgK4M3sZw3LlIYaqDM5V0Ykun8rP5b8nYSslNabjw7ypPWF4mR0PM4g2XwiWWenmO9dN/Iobbk/42Cc5qW15vGMclaSsUgsX0z6J0X+64H7+rbcaxrNjqUgvRN/uMPKKTa7Hx5juHQ4HU2xara+P7TMnh765FY7x9h3DixuPXN9ody5ME+xJPYAm7U9awrA0YTZEShVBojUgYYyIAAjh7BQq9C+AtolobivCEpjUFscgzcgHXTowoXlgshr84naVLvenfQZSmkOMpMt0lEYIxkjFKAbwExcnNldpnpwNAaXOCAonBJMD3JgQIKWOFNwZLNGDw8hdAsE9NII5AA5n5g6yR9ILxBxiAfBwIAcZGiMoGAYEebaAsVRmQXBn9iCGsyMI7CILoG7qzvqsbxhM0RhGTAaKIItMAGoOmBAgPQCG9tDS4cFkTMG28LPKMQcQHM7kHN5NDIShU4g4EydoF3Z3JjiAibwRwHCLrKFOjlQcDAgghMSuQhailMUjESUTUiIlVYdlz3APEQQRsW3IZWYj5IGihcmZSWcPRARCDeopjImBAFuEj8StSTBJ6BkAI7qrthAsUJNT2ELMvZYcDn7ag8GJDdrB5HDSFhxm5ABFqgxFC3lW9AdbhhlCCUSlQzYqmQgu1LUbpHMYRxVduIdeNydqsMSEQBeDEBUGMxUskg3Ext07hTTj5C1VccAQFAhBNA5BEBnx9xsNZFCXRqCBcrE5S3PuLomrdBRWSkSDiVhK2pxgFGQMYnNjomhwYuougJEj2EAINgmJiJ57aux5DiSLXODsAjDCiAkhxh5gTx5mnUi4FXIQeQU6BYSYG4wICsjLBPLOzAgnSMBF4AiJ5AgWgB0+eEQIiAkgk6BnXWAPBIMCCASBI9wpRNgpzJ0pw5wDBE4Z5g4i0tzDIoRJclQl6cEwYQruYqkJLLRHcGcEjJiVuSsiHGQ5xtIBCIEB6dGhDBDBjV0dTtKATE5EppGSBTgiKpiCNFKxRiAQc3T00LBcoQiJ3BnEEoMFBmfn4MBQwhXIYANRhHFPOSQMcERwJM5HBABhtWAQuSoQiIBSJIEeew+wI1K4dwoGMaXaIyJIE5DIgyggDEOgCsEYiZoBs3CKTh7OBmISkujhBOa0UGBxMw/m4CAaQCSs4dzpWaNu4GqNcg4Q2NBIAgCIUDwQxKSNSIQ6eQ8KI4NQDG7ujsTjwRoREYc5gykiWJhtCDeDUyWySJ6O7mCw07gQmxsJqXAiLxTsDAhRU0NGcAiQZiTnYNfQLYLVmSO8kjYwJBpN3t0rjkKMCHbp0QhMBLIScSB2oxAx7R5RmVh8dbSoYHjnIA3snZyQJTNxr9WEA4FB+mCdnnUPBUy/SkGRDEHNkKEoEk7CESSdOah7MAMUQ3NDgNiIwFo4KtiJMgdWe0cQECAOgGhRBAcxNLgi7NkKC5GQgwhJcIgSQOqEYMfKengU6iCQkLJJq65OQQpmM3d3fvZS2BDsrVuAglSI4bQFG4FCBJluOwEEDgW4kzsBCHJWT6WBwRYwphqMWXMY3LEEOogoxUAlDAgLSgyyMDWDB0KRXb15A0ENUFeEjQUUDEpqMtQ5mrsECETMlqtxAKGNFMGtgojIiUIkaNw56FcCIMJoSvswChINRwKIXKhHIIKVSMLdw8nZA8GEVLVXECiJOLET4N5DDOGIlDjH3imIgvAsClF4kBNRck6IaWcg0+FZCDHyyBEgkcDkvSEsLNgRTMwINnMwkUIokrW6eINQCNCdqa0We7YTUCiY3GwmEAEgcIo6VnsWsTnIU3TyGyIQq/RqFExQkDo1A6gSubg7iUBl6bVGHEKbgJjIPJbK5CAihkDGfTOqIAoJYyeIj8UoXEAAkTrMdghQCiDAAlI+BhBsenCKQICoD1Gf8RxilEAUJQCnCBCApqS5HZwQICcHUQi5yexEATjUM3GKbZcjMwKBSGAED4dE0RlOwKDu3BenALNnJWWnHhENjcEOBhMNNvXFAnBQACzBYQ31CDBAQaBBbN2OPagHgwPBZFzh1J16EBNJaCLKS+NGAmJnDpA5MJkYUbinpAN5MyBAxAhSUHh4QxUiBEmAk2Wxo4ECIEYA4gxvUQFxB4OcMhGt6sHJAwR6lv1GoxiOAXaCQSMywVLre6YIJnBzPTI5QAxiyqR+bP7MEHtAEBxRosezVwaCA5hcsi21A0HkRBREoC4mWw8JgAICygzn3qwDYIogGMhAnnoAYY4gtf5/AfeGXcOkVKpNAAAAAElFTkSuQmCC"

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    let defaults = UserDefaults.standard
    // TODO: Connect outlets to View
    @IBOutlet weak var numPlayers: UILabel!
    @IBOutlet weak var labelBedRock: UILabel!
    @IBOutlet weak var labelVersion: UILabel!
    @IBOutlet weak var labelName: UILabel!
    @IBOutlet var imagePlayer: UIView!
    @IBOutlet weak var serverTableView: UITableView!
    
    
    
    func pingServer(_ ipAddress:String) throws -> ServerResponse {
        let requestUrl =
        // .addingPercentEncoding(withAllowedCharacters: .urlHostAllowed)!
        "https://mc-api.net/v3/server/ping/" + ipAddress
        let url = URL(string: requestUrl)
        let data = (try? Data(contentsOf: url!))!
        do {
            let res = try JSONDecoder().decode(ServerResponse.self, from: data)
            return res
        } catch let error {
            print(error)
            throw ServerReponseError.fatal
        }
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return serverList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ServerCell", for: indexPath) as! ServerTableViewCell
        
        let server = serverList[indexPath.row]
        cell.serverName.text = server.name
        cell.ipAddress = server.ip
        print(server.name)

        let serverData: ServerResponse!
        do{
            try serverData = pingServer(server.ip)
            let imageData = Data(base64Encoded: String((serverData.favicon_base64 ?? defaultIcon).dropFirst(22)))
            if let imageData = imageData {
                cell.serverIcon.image = UIImage(data: imageData)
            }
            cell.serverMOTD.text = serverData.online ? "Online" : "Offline"
            cell.serverPlayerCount.text = "\(serverData.players?.online ?? 0)/\(serverData.players?.max ?? 0)"
        } catch let error{
            print(error)
        }

        
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {

        if editingStyle == .delete{

            // remove the item from the data model
            deleteServerGlobal(indexPath.row)

            // delete the table view row
            tableView.deleteRows(at: [indexPath], with: .fade)

        } else if editingStyle == .insert {
            print("How did you get here?")
        }
    }
    
    var selectedServer: ServerResponse!
    var selectedServerInfo: Server!
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
            
            // Sets the variables to be gotten by the prepare for segue function
        let server = serverList[indexPath.row]
        do{
            let selectedServer = try pingServer(server.ip)
            let selectedServerInfo = server
        } catch{
            print("ERROR")
        }
            self.performSegue(withIdentifier: "serverDetails", sender: self)
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if(segue.identifier == "serverDetails"){
            let destinationNavigationController = segue.destination as! ThirdViewController
            let targetController = destinationNavigationController
            
            // Sets the variables in the second view controller
            targetController.selectedServer = selectedServer
            targetController.selectedServerInfo = selectedServer
        } else{
            
        }
        
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.

        serverTableView.delegate = self
        serverTableView.dataSource = self
        
       
        
        print(serverList)
        
        do{
            try print(pingServer("mc.hypixel.net").online)
            try print(pingServer("mc.doesnotexist.net").online)
        } catch{
            print("ERROR")
        }

    }

    @IBAction func unwind(_ seg: UIStoryboardSegue){
        serverTableView.reloadData()
    }
    
}

