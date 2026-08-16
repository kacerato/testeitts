package b6;

import com.itsmagic.engine.Activities.Editor.Extensions.LanguageSystem.Lang;
import com.itsmagic.engine.Activities.Editor.Panels.Marketplace.BackendAPI.Objects.Product;

public class C3849c {
    public static String a(Product product) {
        int k10 = product.k();
        if (k10 == 1) {
            return product.l() + " " + Lang.l(Lang.T.STORE_COINS);
        }
        if (k10 != 2) {
            return "";
        }
        return "$" + Nc.b.t0(product.l() / 100.0f);
    }

    public static String b(Product product, int promotionPercentage) {
        int k10 = product.k();
        if (k10 == 1) {
            float l10 = product.l();
            return ((int) (l10 - ((promotionPercentage / 100.0f) * l10))) + " " + Lang.l(Lang.T.STORE_COINS);
        }
        if (k10 != 2) {
            return "";
        }
        float l11 = product.l() / 100.0f;
        return "$" + Nc.b.t0(l11 - ((promotionPercentage / 100.0f) * l11));
    }

    public static String c(Product product) {
        int k10 = product.k();
        if (k10 == 1) {
            return "\u2102" + product.l();
        }
        if (k10 != 2) {
            return "";
        }
        return "$" + Nc.b.t0(product.l() / 100.0f);
    }

    public static String d(Product product, int promotionPercentage) {
        int k10 = product.k();
        if (k10 == 1) {
            float l10 = product.l();
            return "\u2102" + ((int) (l10 - ((promotionPercentage / 100.0f) * l10)));
        }
        if (k10 != 2) {
            return "";
        }
        float l11 = product.l() / 100.0f;
        return "$" + Nc.b.t0(l11 - ((promotionPercentage / 100.0f) * l11));
    }
}
