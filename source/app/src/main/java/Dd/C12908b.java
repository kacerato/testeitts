package dd;

import M7.g;
import android.content.Context;
import android.view.MenuItem;
import android.view.SubMenu;
import android.widget.ImageView;
import androidx.annotation.DrawableRes;
import com.itsmagic.engine.Engines.Utils.ListUtils.SteppedArrayList;
import java.util.LinkedList;
import java.util.List;

public class C12908b {

    public EnumC1575b f84528a;

    public String f84529b;

    public List<C12908b> f84530c;

    public d f84531d;

    public InterfaceC12909c f84532e;

    public int f84533f;

    public int f84534g;

    public int f84535h;

    public InterfaceC12907a f84536i;

    public boolean f84537j;

    public a f84538k;

    public List<g> f84539l;

    public List<g> f84540m;

    @Deprecated
    public SubMenu f84541n;

    @Deprecated
    public MenuItem f84542o;

    public interface a {
        void a(Context context, ImageView imageView);

        default boolean hasIcon() {
            return true;
        }
    }

    public enum EnumC1575b {
        Folder,
        Item,
        Tittle,
        Separator,
        CustomView,
        ButtonElements
    }

    public C12908b() {
        this.f84530c = null;
        this.f84533f = -1;
        this.f84534g = -1;
        this.f84537j = true;
        this.f84528a = EnumC1575b.Separator;
    }

    public C12908b a(MenuItem menuItem) {
        if (this.f84542o == menuItem) {
            return this;
        }
        if (this.f84530c == null) {
            return null;
        }
        for (int i10 = 0; i10 < this.f84530c.size(); i10++) {
            C12908b a10 = this.f84530c.get(i10).a(menuItem);
            if (a10 != null) {
                return a10;
            }
        }
        return null;
    }

    public a b() {
        return this.f84538k;
    }

    public void c(List<C12908b> others) {
        String str;
        if (others != null) {
            if (this.f84530c == null) {
                this.f84530c = new LinkedList(others);
                return;
            }
            for (int i10 = 0; i10 < others.size(); i10++) {
                C12908b c12908b = others.get(i10);
                int i11 = 0;
                while (true) {
                    if (i11 >= this.f84530c.size()) {
                        this.f84530c.add(c12908b);
                        break;
                    }
                    C12908b c12908b2 = this.f84530c.get(i11);
                    if (c12908b.f84528a == c12908b2.f84528a && (str = c12908b.f84529b) != null && str.equals(c12908b2.f84529b)) {
                        c12908b2.c(c12908b.f84530c);
                        break;
                    }
                    i11++;
                }
            }
        }
    }

    public C12908b d(MenuItem item) {
        for (C12908b c12908b : this.f84530c) {
            if (c12908b.f84528a == EnumC1575b.Folder) {
                C12908b d10 = c12908b.d(item);
                if (d10 != null) {
                    return d10;
                }
            } else if (c12908b.f84542o == item) {
                return c12908b;
            }
        }
        return null;
    }

    public C12908b e(a iconDrawer) {
        this.f84538k = iconDrawer;
        return this;
    }

    public C12908b(String tittle) {
        this.f84530c = null;
        this.f84533f = -1;
        this.f84534g = -1;
        this.f84537j = true;
        this.f84528a = EnumC1575b.Tittle;
        this.f84529b = tittle;
    }

    public C12908b(EnumC1575b type, String tittle) {
        this.f84530c = null;
        this.f84533f = -1;
        this.f84534g = -1;
        this.f84537j = true;
        this.f84528a = type;
        this.f84529b = tittle;
        if (type == EnumC1575b.Folder) {
            this.f84530c = new SteppedArrayList();
        }
    }

    public C12908b(int layoutRes, InterfaceC12907a customViewListener) {
        this.f84530c = null;
        this.f84533f = -1;
        this.f84534g = -1;
        this.f84537j = true;
        this.f84528a = EnumC1575b.CustomView;
        this.f84535h = layoutRes;
        this.f84536i = customViewListener;
    }

    public C12908b(List<g> leftElements, List<g> rightElements) {
        this.f84530c = null;
        this.f84533f = -1;
        this.f84534g = -1;
        this.f84537j = true;
        this.f84528a = EnumC1575b.ButtonElements;
        this.f84539l = leftElements;
        this.f84540m = rightElements;
    }

    public C12908b(String tittle, boolean allowClick) {
        this.f84530c = null;
        this.f84533f = -1;
        this.f84534g = -1;
        this.f84537j = true;
        this.f84528a = EnumC1575b.Item;
        this.f84529b = tittle;
        this.f84537j = allowClick;
    }

    public C12908b(String tittle, d onSelectedListener) {
        this.f84530c = null;
        this.f84533f = -1;
        this.f84534g = -1;
        this.f84537j = true;
        this.f84528a = EnumC1575b.Item;
        this.f84529b = tittle;
        this.f84531d = onSelectedListener;
    }

    public C12908b(@DrawableRes int icon, String tittle, d onSelectedListener) {
        this.f84530c = null;
        this.f84533f = -1;
        this.f84534g = -1;
        this.f84537j = true;
        this.f84528a = EnumC1575b.Item;
        this.f84533f = icon;
        this.f84529b = tittle;
        this.f84531d = onSelectedListener;
    }

    public C12908b(String tittle, int textColor, d onSelectedListener) {
        this.f84530c = null;
        this.f84533f = -1;
        this.f84534g = -1;
        this.f84537j = true;
        this.f84528a = EnumC1575b.Item;
        this.f84529b = tittle;
        this.f84534g = textColor;
        this.f84531d = onSelectedListener;
    }

    public C12908b(@DrawableRes int icon, String tittle, int textColor, d onSelectedListener) {
        this.f84530c = null;
        this.f84533f = -1;
        this.f84534g = -1;
        this.f84537j = true;
        this.f84528a = EnumC1575b.Item;
        this.f84533f = icon;
        this.f84529b = tittle;
        this.f84534g = textColor;
        this.f84531d = onSelectedListener;
    }

    public C12908b(String tittle, InterfaceC12909c multiClickListener) {
        this.f84530c = null;
        this.f84533f = -1;
        this.f84534g = -1;
        this.f84537j = true;
        this.f84528a = EnumC1575b.Item;
        this.f84529b = tittle;
        this.f84532e = multiClickListener;
    }

    public C12908b(@DrawableRes int icon, String tittle, InterfaceC12909c multiClickListener) {
        this.f84530c = null;
        this.f84533f = -1;
        this.f84534g = -1;
        this.f84537j = true;
        this.f84528a = EnumC1575b.Item;
        this.f84533f = icon;
        this.f84529b = tittle;
        this.f84532e = multiClickListener;
    }

    public C12908b(String tittle, int textColor, InterfaceC12909c multiClickListener) {
        this.f84530c = null;
        this.f84533f = -1;
        this.f84534g = -1;
        this.f84537j = true;
        this.f84528a = EnumC1575b.Item;
        this.f84529b = tittle;
        this.f84534g = textColor;
        this.f84532e = multiClickListener;
    }

    public C12908b(@DrawableRes int icon, String tittle, int textColor, InterfaceC12909c multiClickListener) {
        this.f84530c = null;
        this.f84533f = -1;
        this.f84534g = -1;
        this.f84537j = true;
        this.f84528a = EnumC1575b.Item;
        this.f84533f = icon;
        this.f84529b = tittle;
        this.f84534g = textColor;
        this.f84532e = multiClickListener;
    }

    public C12908b(String tittle, List<C12908b> childs) {
        this.f84530c = null;
        this.f84533f = -1;
        this.f84534g = -1;
        this.f84537j = true;
        this.f84528a = EnumC1575b.Folder;
        this.f84529b = tittle;
        this.f84530c = childs;
    }

    public C12908b(@DrawableRes int icon, String tittle, List<C12908b> childs) {
        this.f84530c = null;
        this.f84533f = -1;
        this.f84534g = -1;
        this.f84537j = true;
        this.f84528a = EnumC1575b.Folder;
        this.f84533f = icon;
        this.f84529b = tittle;
        this.f84530c = childs;
    }
}
