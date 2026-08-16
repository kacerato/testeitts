package com.itsmagic.engine.Core.Components.GIAP;

import com.itsmagic.engine2.R;
import java.util.HashMap;
import java.util.Map;
import org.eclipse.jdt.core.compiler.IProblem;

public abstract class c {

    public static final String f72502a = "itsmagic.subscription.vip";

    public static d[] f72503b = {new d("itsmagic.product.lifetime_vip", R.drawable.partner_1_month, "VIP-LIFETIME", -1), new d("itsmagic.product.2rs_to_coins", R.drawable.money_bag, "COINS", 100), new d("itsmagic.product.5rs_to_coins", R.drawable.money_bag, "COINS", 550), new d("itsmagic.product.10rs_to_coins", R.drawable.money_bag, "COINS", IProblem.UnlikelyCollectionMethodArgumentType), new d("itsmagic.product.15rs_to_coins", R.drawable.money_bag, "COINS", 1700), new d("itsmagic.product.30rs_to_coins", R.drawable.money_bag, "COINS", 3500), new d("itsmagic.product.50rs_to_coins", R.drawable.money_bag, "COINS", 7000), new d("itsmagic.product.1ds_to_funds", R.drawable.money, "FUNDS", 100), new d("itsmagic.product.5ds_to_funds", R.drawable.money, "FUNDS", 500), new d("itsmagic.product.15ds_to_funds", R.drawable.money, "FUNDS", 1500), new d("itsmagic.product.30ds_to_funds", R.drawable.money, "FUNDS", 3000), new d(f72502a, R.drawable.partner_1_month, "VIP-SUB", 0, true)};

    public static final Map<String, d> f72504c = new HashMap();

    static {
        int i10 = 0;
        while (true) {
            d[] dVarArr = f72503b;
            if (i10 >= dVarArr.length) {
                return;
            }
            d dVar = dVarArr[i10];
            f72504c.put(dVar.a(), dVar);
            i10++;
        }
    }

    public static d a(String code) {
        return f72504c.get(code);
    }
}
