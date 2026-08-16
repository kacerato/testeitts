package JAVARuntime;

import android.content.Context;
import android.view.ContextMenu;
import android.view.DragEvent;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.widget.AdapterView;
import android.widget.ListView;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/Builder/aab_release.zip:base/assets/javaruntimelibraries.zip:AListView.class
  base.apk:assets/Editor/Builder/app_release.zip:assets/javaruntimelibraries.zip:AListView.class
  classes.dex
 */
@ClassCategory(cat = {"Android Views"})
public class AListView extends ListView implements AViewInstance {

    public class AnonymousClass1 extends AOnItemClickListener {
        final AdapterView.OnItemClickListener val$listener;

        public AnonymousClass1(final AdapterView.OnItemClickListener val$listener) {
            this.val$listener = val$listener;
        }

        @Override
        public void onItemClickEvent(AdapterView<?> parent, View view, int position, long id2) {
            this.val$listener.onItemClick(parent, view, position, id2);
        }
    }

    public class AnonymousClass10 extends AOnKeyListener {
        final View.OnKeyListener val$l;

        public AnonymousClass10(final View.OnKeyListener val$l) {
            this.val$l = val$l;
        }

        @Override
        public boolean onKeyEvent(View v10, int keyCode, KeyEvent event) {
            return this.val$l.onKey(v10, keyCode, event);
        }
    }

    public class AnonymousClass11 extends AOnScrollChangeListener {
        final View.OnScrollChangeListener val$l;

        public AnonymousClass11(final View.OnScrollChangeListener val$l) {
            this.val$l = val$l;
        }

        @Override
        public void onScrollChangeEvent(View v10, int scrollX, int scrollY, int oldScrollX, int oldScrollY) {
            this.val$l.onScrollChange(v10, scrollX, scrollY, oldScrollX, oldScrollY);
        }
    }

    public class AnonymousClass12 extends AOnFocusChangeListener {
        final View.OnFocusChangeListener val$l;

        public AnonymousClass12(final View.OnFocusChangeListener val$l) {
            this.val$l = val$l;
        }

        @Override
        public void onFocusChangeEvent(View v10, boolean hasFocus) {
            this.val$l.onFocusChange(v10, hasFocus);
        }
    }

    public class AnonymousClass13 extends AOnCreateContextMenuListener {
        final View.OnCreateContextMenuListener val$l;

        public AnonymousClass13(final View.OnCreateContextMenuListener val$l) {
            this.val$l = val$l;
        }

        @Override
        public void onCreateContextMenuEvent(ContextMenu menu, View v10, ContextMenu.ContextMenuInfo menuInfo) {
            this.val$l.onCreateContextMenu(menu, v10, menuInfo);
        }
    }

    public class AnonymousClass2 extends AOnItemLongClickListener {
        final AdapterView.OnItemLongClickListener val$listener;

        public AnonymousClass2(final AdapterView.OnItemLongClickListener val$listener) {
            this.val$listener = val$listener;
        }

        @Override
        public boolean onItemLongClickEvent(AdapterView<?> parent, View view, int position, long id2) {
            return this.val$listener.onItemLongClick(parent, view, position, id2);
        }
    }

    public class AnonymousClass3 implements AdapterView.OnItemSelectedListener {
        final AdapterView.OnItemSelectedListener val$listener;

        public AnonymousClass3(final AdapterView.OnItemSelectedListener val$listener) {
            this.val$listener = val$listener;
        }

        @Override
        public void onItemSelected(AdapterView<?> parent, View view, int position, long id2) {
            this.val$listener.onItemSelected(parent, view, position, id2);
        }

        @Override
        public void onNothingSelected(AdapterView<?> parent) {
            this.val$listener.onNothingSelected(parent);
        }
    }

    public class AnonymousClass4 extends AOnGenericMotionListener {
        final View.OnGenericMotionListener val$l;

        public AnonymousClass4(final View.OnGenericMotionListener val$l) {
            this.val$l = val$l;
        }

        @Override
        public boolean onGenericMotionEvent(View v10, MotionEvent event) {
            return this.val$l.onGenericMotion(v10, event);
        }
    }

    public class AnonymousClass5 extends AOnLongClickListener {
        final View.OnLongClickListener val$l;

        public AnonymousClass5(final View.OnLongClickListener val$l) {
            this.val$l = val$l;
        }

        @Override
        public boolean onLongClickEvent(View v10) {
            return this.val$l.onLongClick(v10);
        }
    }

    public class AnonymousClass6 extends AOnClickListener {
        final View.OnClickListener val$l;

        public AnonymousClass6(final View.OnClickListener val$l) {
            this.val$l = val$l;
        }

        @Override
        public void onClickEvent(View v10) {
            this.val$l.onClick(v10);
        }
    }

    public class AnonymousClass7 extends AOnTouchListener {
        final View.OnTouchListener val$l;

        public AnonymousClass7(final View.OnTouchListener val$l) {
            this.val$l = val$l;
        }

        @Override
        public boolean onTouchEvent(View v10, MotionEvent event) {
            return this.val$l.onTouch(v10, event);
        }
    }

    public class AnonymousClass8 extends AOnHoverListener {
        final View.OnHoverListener val$l;

        public AnonymousClass8(final View.OnHoverListener val$l) {
            this.val$l = val$l;
        }

        @Override
        public boolean onHoverEvent(View v10, MotionEvent event) {
            return this.val$l.onHover(v10, event);
        }
    }

    public class AnonymousClass9 extends AOnDragListener {
        final View.OnDragListener val$l;

        public AnonymousClass9(final View.OnDragListener val$l) {
            this.val$l = val$l;
        }

        @Override
        public boolean onDragEvent(View v10, DragEvent event) {
            return this.val$l.onDrag(v10, event);
        }
    }

    public AListView(Context context) {
        super(null);
    }

    @Override
    public String getViewID() {
        return Editor.getIdOf(this);
    }

    @Override
    public <T extends View> T findByID(String str) {
        return (T) Editor.findViewByID(this, str);
    }

    @Override
    public void setOnItemClickListener(AdapterView.OnItemClickListener onItemClickListener) {
    }

    @Override
    public void setOnItemLongClickListener(AdapterView.OnItemLongClickListener onItemLongClickListener) {
    }

    @Override
    public void setOnItemSelectedListener(AdapterView.OnItemSelectedListener onItemSelectedListener) {
    }

    @Override
    public void setOnGenericMotionListener(View.OnGenericMotionListener onGenericMotionListener) {
    }

    @Override
    public void setOnLongClickListener(View.OnLongClickListener onLongClickListener) {
    }

    @Override
    public void setOnClickListener(View.OnClickListener onClickListener) {
    }

    @Override
    public void setOnTouchListener(View.OnTouchListener onTouchListener) {
    }

    @Override
    public void setOnHoverListener(View.OnHoverListener onHoverListener) {
    }

    @Override
    public void setOnDragListener(View.OnDragListener onDragListener) {
    }

    @Override
    public void setOnKeyListener(View.OnKeyListener onKeyListener) {
    }

    @Override
    public void setOnScrollChangeListener(View.OnScrollChangeListener onScrollChangeListener) {
    }

    @Override
    public void setOnFocusChangeListener(View.OnFocusChangeListener onFocusChangeListener) {
    }

    @Override
    public void setOnCreateContextMenuListener(View.OnCreateContextMenuListener onCreateContextMenuListener) {
    }
}
