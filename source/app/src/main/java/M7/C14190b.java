package m7;

import F7.i;
import F7.j;
import Ic.C2633l;
import android.content.Context;
import android.widget.ImageView;
import com.itsmagic.engine2.R;
import java.io.File;

public class C14190b implements j {
    @Override
    public void a(Context context, ImageView imageView, ImageView subIconImageView, i eElement) {
        if (!eElement.f6679a.endsWith(".meta")) {
            if (eElement.n()) {
                Vc.e.V(imageView, R.drawable.folder_v5_white, context);
                return;
            } else {
                Vc.e.V(imageView, R.drawable.folder_yellow, context);
                return;
            }
        }
        File k10 = Tc.b.k(new File(eElement.f6679a));
        if (k10 != null && subIconImageView != null) {
            C2633l.i(subIconImageView, k10.getAbsolutePath(), context);
        }
        if (eElement.n()) {
            Vc.e.V(imageView, R.drawable.meta_folder_white, context);
        } else {
            Vc.e.V(imageView, R.drawable.meta_folder, context);
        }
    }
}
