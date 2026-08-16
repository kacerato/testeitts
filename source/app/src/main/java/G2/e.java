package g2;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityManager;
import android.widget.AdapterView;
import android.widget.Filterable;
import android.widget.ListAdapter;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.appcompat.widget.AppCompatAutoCompleteTextView;
import androidx.appcompat.widget.ListPopupWindow;
import com.google.android.material.internal.g;
import com.google.android.material.internal.s;
import com.google.android.material.textfield.TextInputLayout;
import h2.C13421a;
import w1.C15879a;

public class e extends AppCompatAutoCompleteTextView {

    public static final int f88073e = 15;

    @NonNull
    public final ListPopupWindow f88074b;

    @Nullable
    public final AccessibilityManager f88075c;

    @NonNull
    public final Rect f88076d;

    public class a implements AdapterView.OnItemClickListener {
        public a() {
        }

        @Override
        public void onItemClick(AdapterView<?> adapterView, View view, int i10, long j10) {
            e.this.e(i10 < 0 ? e.this.f88074b.getSelectedItem() : e.this.getAdapter().getItem(i10));
            AdapterView.OnItemClickListener onItemClickListener = e.this.getOnItemClickListener();
            if (onItemClickListener != null) {
                if (view == null || i10 < 0) {
                    view = e.this.f88074b.getSelectedView();
                    i10 = e.this.f88074b.getSelectedItemPosition();
                    j10 = e.this.f88074b.getSelectedItemId();
                }
                onItemClickListener.onItemClick(e.this.f88074b.getListView(), view, i10, j10);
            }
            e.this.f88074b.dismiss();
        }
    }

    public e(@NonNull Context context) {
        this(context, null);
    }

    @Nullable
    public final TextInputLayout c() {
        for (ViewParent parent = getParent(); parent != null; parent = parent.getParent()) {
            if (parent instanceof TextInputLayout) {
                return (TextInputLayout) parent;
            }
        }
        return null;
    }

    public final int d() {
        ListAdapter adapter = getAdapter();
        TextInputLayout c10 = c();
        int i10 = 0;
        if (adapter == null || c10 == null) {
            return 0;
        }
        int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(getMeasuredWidth(), 0);
        int makeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(getMeasuredHeight(), 0);
        int min = Math.min(adapter.getCount(), Math.max(0, this.f88074b.getSelectedItemPosition()) + 15);
        View view = null;
        int i11 = 0;
        for (int max = Math.max(0, min - 15); max < min; max++) {
            int itemViewType = adapter.getItemViewType(max);
            if (itemViewType != i10) {
                view = null;
                i10 = itemViewType;
            }
            view = adapter.getView(max, view, c10);
            if (view.getLayoutParams() == null) {
                view.setLayoutParams(new ViewGroup.LayoutParams(-2, -2));
            }
            view.measure(makeMeasureSpec, makeMeasureSpec2);
            i11 = Math.max(i11, view.getMeasuredWidth());
        }
        Drawable background = this.f88074b.getBackground();
        if (background != null) {
            background.getPadding(this.f88076d);
            Rect rect = this.f88076d;
            i11 += rect.left + rect.right;
        }
        return i11 + c10.getEndIconView().getMeasuredWidth();
    }

    public final <T extends ListAdapter & Filterable> void e(Object obj) {
        setText(convertSelectionToString(obj), false);
    }

    @Override
    @Nullable
    public CharSequence getHint() {
        TextInputLayout c10 = c();
        return (c10 == null || !c10.a0()) ? super.getHint() : c10.getHint();
    }

    @Override
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        TextInputLayout c10 = c();
        if (c10 != null && c10.a0() && super.getHint() == null && g.c()) {
            setHint("");
        }
    }

    @Override
    public void onMeasure(int i10, int i11) {
        super.onMeasure(i10, i11);
        if (View.MeasureSpec.getMode(i10) == Integer.MIN_VALUE) {
            setMeasuredDimension(Math.min(Math.max(getMeasuredWidth(), d()), View.MeasureSpec.getSize(i10)), getMeasuredHeight());
        }
    }

    @Override
    public <T extends ListAdapter & Filterable> void setAdapter(@Nullable T t10) {
        super.setAdapter(t10);
        this.f88074b.setAdapter(getAdapter());
    }

    @Override
    public void showDropDown() {
        AccessibilityManager accessibilityManager = this.f88075c;
        if (accessibilityManager == null || !accessibilityManager.isTouchExplorationEnabled()) {
            super.showDropDown();
        } else {
            this.f88074b.show();
        }
    }

    public e(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, C15879a.c.f122246Y);
    }

    public e(@NonNull Context context, @Nullable AttributeSet attributeSet, int i10) {
        super(C13421a.c(context, attributeSet, i10, 0), attributeSet, i10);
        this.f88076d = new Rect();
        Context context2 = getContext();
        TypedArray j10 = s.j(context2, attributeSet, C15879a.o.f124955Dk, i10, C15879a.n.f124592g9, new int[0]);
        int i11 = C15879a.o.f124979Ek;
        if (j10.hasValue(i11) && j10.getInt(i11, 0) == 0) {
            setKeyListener(null);
        }
        this.f88075c = (AccessibilityManager) context2.getSystemService(Context.ACCESSIBILITY_SERVICE);
        ListPopupWindow listPopupWindow = new ListPopupWindow(context2);
        this.f88074b = listPopupWindow;
        listPopupWindow.setModal(true);
        listPopupWindow.setAnchorView(this);
        listPopupWindow.setInputMethodMode(2);
        listPopupWindow.setAdapter(getAdapter());
        listPopupWindow.setOnItemClickListener(new a());
        j10.recycle();
    }
}
