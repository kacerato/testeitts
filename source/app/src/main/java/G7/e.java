package G7;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import com.itsmagic.engine.Activities.Editor.Utils.UIComponents.CustomCheckBox.CustomDualModeCheckBox;
import com.itsmagic.engine2.R;

public class e extends G7.a {

    public final c f7694a;

    public class a implements CustomDualModeCheckBox.a {
        public a() {
        }

        @Override
        public void a(CustomDualModeCheckBox.b state) {
            e.this.f7694a.a(e.d(state));
        }
    }

    public static class b {

        public static final int[] f7696a;

        static {
            int[] iArr = new int[CustomDualModeCheckBox.b.values().length];
            f7696a = iArr;
            try {
                iArr[CustomDualModeCheckBox.b.PartiallySelected.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f7696a[CustomDualModeCheckBox.b.FullSelected.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f7696a[CustomDualModeCheckBox.b.Unselected.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    public interface c {
        void a(d state);

        d getState();
    }

    public enum d {
        Unselected,
        PartiallySelected,
        FullSelected
    }

    public e(c listener) {
        this.f7694a = listener;
    }

    public static d d(CustomDualModeCheckBox.b state) {
        if (state == null) {
            return d.Unselected;
        }
        int i10 = b.f7696a[state.ordinal()];
        return i10 != 1 ? i10 != 2 ? d.Unselected : d.FullSelected : d.PartiallySelected;
    }

    public static CustomDualModeCheckBox.b e(d state) {
        if (state == null) {
            return CustomDualModeCheckBox.b.Unselected;
        }
        int ordinal = state.ordinal();
        return ordinal != 1 ? ordinal != 2 ? CustomDualModeCheckBox.b.Unselected : CustomDualModeCheckBox.b.FullSelected : CustomDualModeCheckBox.b.PartiallySelected;
    }

    @Override
    public void a(LayoutInflater layoutInflater, Context context, LinearLayout parent, int height) {
        View inflate = layoutInflater.inflate(R.layout.editorv2_inspector_partially_toggle, (ViewGroup) null);
        CustomDualModeCheckBox customDualModeCheckBox = (CustomDualModeCheckBox) inflate.findViewById(R.id.toggle);
        parent.addView(inflate);
        LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) inflate.getLayoutParams();
        layoutParams.height = height;
        layoutParams.width = height;
        customDualModeCheckBox.setState(e(this.f7694a.getState()));
        customDualModeCheckBox.setOnStateChangeListener(new a());
        inflate.setLayoutParams(layoutParams);
    }
}
