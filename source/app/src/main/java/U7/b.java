package U7;

import F7.i;
import F7.j;
import android.content.Context;
import android.widget.ImageView;
import com.itsmagic.engine2.R;
import java.io.File;

public class b implements j {
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
        if (Tc.b.k(new File(eElement.f6679a)) != null && subIconImageView != null) {
            subIconImageView.setImageDrawable(null);
        }
        if (eElement.n()) {
            Vc.e.V(imageView, R.drawable.meta_folder_white, context);
        } else {
            Vc.e.V(imageView, R.drawable.meta_folder, context);
        }
    }
}
