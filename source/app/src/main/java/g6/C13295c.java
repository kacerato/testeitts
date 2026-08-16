package g6;

import F7.i;
import F7.j;
import android.content.Context;
import android.widget.ImageView;
import androidx.core.content.ContextCompat;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.Components.Component;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.GameObject.GameObject;
import com.itsmagic.engine.Engines.Utils.ListUtils.SteppedArrayList;
import com.itsmagic.engine2.R;
import java.util.Collections;
import java.util.Comparator;

public class C13295c implements j {
    public static int c(Component component, Component component2) {
        return Float.compare(component.iconPriority(), component2.iconPriority());
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static void d(ImageView imageView, GameObject o10, Context context) {
        if (o10 == null || imageView == null) {
            return;
        }
        if (o10.c1()) {
            imageView.setVisibility(8);
            return;
        }
        SteppedArrayList steppedArrayList = new SteppedArrayList(o10.N());
        for (int i10 = 0; i10 < o10.N(); i10++) {
            Component L10 = o10.L(i10);
            if (L10 != null && L10.isEnabled() && L10.getIconResource() != R.drawable.unknow_component_icon_2) {
                steppedArrayList.add(L10);
            }
        }
        if (steppedArrayList.isEmpty()) {
            if (o10.z0().isEmpty()) {
                imageView.setVisibility(8);
            } else {
                imageView.setVisibility(0);
                Vc.e.V(imageView, R.drawable.wo_multi, context);
            }
            imageView.setColorFilter(ContextCompat.getColor(context, R.color.theme_high_icon_tint));
            return;
        }
        Collections.sort(steppedArrayList, new Comparator() {
            @Override
            public final int compare(Object obj, Object obj2) {
                int c10;
                c10 = C13295c.c((Component) obj, (Component) obj2);
                return c10;
            }
        });
        Component component = (Component) steppedArrayList.get(steppedArrayList.size() - 1);
        imageView.setVisibility(0);
        Vc.e.V(imageView, component.getIconResource(), context);
        Vc.e.e(imageView);
    }

    @Override
    public void a(Context context, ImageView imageView, ImageView subIconImageView, i eElement) {
        GameObject v10;
        if (!(eElement instanceof C13293a) || (v10 = ((C13293a) eElement).v()) == null) {
            return;
        }
        d(imageView, v10, context);
    }
}
