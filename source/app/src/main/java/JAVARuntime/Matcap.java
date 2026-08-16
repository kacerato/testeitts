package JAVARuntime;

import D5.e;
import H3.f;
import H3.g;
import N7.c;
import P8.i;
import P8.k;
import P8.m;
import P8.n;
import P8.q;
import android.content.Context;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import com.itsmagic.engine.Activities.Editor.Utils.AbstractViewOnClickListenerC12733a;
import com.itsmagic.engine.Engines.Utils.Variable;
import com.itsmagic.engine2.R;
import d8.h;
import d8.j;
import java.lang.reflect.Field;
import r4.C15147a;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/Builder/aab_release.zip:base/assets/javaruntimelibraries.zip:Matcap.class
  base.apk:assets/Editor/Builder/app_release.zip:assets/javaruntimelibraries.zip:Matcap.class
  classes.dex
 */
public class Matcap {

    public class AnonymousClass1 implements m {
        final Class val$thisClass;

        public class C02791 implements e {
            final k val$constructor;
            final String val$tittle;
            final Matcap val$var;

            public class C02801 extends AbstractViewOnClickListenerC12733a {
                final ImageView val$colorImage;
                final Context val$context;

                public class C02811 implements H3.e {
                    public C02811() {
                    }

                    @Override
                    public String getSelected() {
                        return Matcap.access$000(C02791.this.val$var);
                    }

                    @Override
                    public void onSelected(final String file) {
                        K8.a.I(new Runnable() {
                            @Override
                            public void run() {
                                Matcap.access$002(C02791.this.val$var, file);
                                Matcap.access$102(C02791.this.val$var, g.G1(file, true, "BaseColor.jpg", "Color.jpg", "Albedo.jpg", "color.jpg"));
                                C02791 c02791 = C02791.this;
                                c02791.val$constructor.setValue(c02791.val$var);
                                c.j0(new java.lang.Runnable() {
                                    @Override
                                    public void run() {
                                        C02801 c02801 = C02801.this;
                                        Vc.e.G(c02801.val$colorImage, f.y1(C02791.this.val$var.getFile()), C02801.this.val$context);
                                    }
                                });
                            }
                        });
                    }
                }

                public C02801(final ImageView val$colorImage, final Context val$context) {
                    this.val$colorImage = val$colorImage;
                    this.val$context = val$context;
                }

                @Override
                public void click(View view) {
                    f.H1(view, C15147a.e.Left, new C02811());
                }
            }

            public C02791(final String val$tittle, final Matcap val$var, final k val$constructor) {
                this.val$tittle = val$tittle;
                this.val$var = val$var;
                this.val$constructor = val$constructor;
            }

            @Override
            public void onCreate(View view, Context context, C5.b entry) {
                ((TextView) view.findViewById(R.id.tittle)).setText(this.val$tittle);
                ImageView imageView = (ImageView) view.findViewById(R.id.imageView6);
                Vc.e.G(imageView, f.y1(this.val$var.getFile()), context);
                imageView.setOnClickListener(new C02801(imageView, context));
            }
        }

        public AnonymousClass1(final Class val$thisClass) {
            this.val$thisClass = val$thisClass;
        }

        @Override
        public Class getCls() {
            return this.val$thisClass;
        }

        @Override
        public String getFullName() {
            return this.val$thisClass.getName();
        }

        @Override
        public C5.b getInspector(Context context, k constructor, String tittle, q userPointer) {
            return new C5.b(new C02791(tittle, (Matcap) constructor.getValue(), constructor), R.layout.inspector_component_texture, (Object) null);
        }

        @Override
        public boolean isRestorable() {
            return true;
        }

        @Override
        public Object newInstance(q userPointer) {
            return new Matcap(null);
        }

        @Override
        public Object restore(Variable variable, q userPointer) {
            String str;
            Matcap fromJson;
            if (variable.type != Variable.a.Matcap || (str = variable.str_value) == null || str.isEmpty() || (fromJson = Matcap.fromJson(variable.str_value)) == null) {
                return null;
            }
            return fromJson;
        }

        @Override
        public Variable save(String fieldName, Object value, q userPointer) {
            Matcap matcap = (Matcap) value;
            return matcap != null ? new Variable(fieldName, matcap.toJson(), Variable.a.Matcap) : new Variable(fieldName, "", Variable.a.Matcap);
        }
    }

    public class AnonymousClass2 implements i {
        final Class val$thisClass;

        public class AnonymousClass1 implements e {
            final Matcap val$finalVar;
            final n val$getSetterListener;
            final String val$tittle;

            public class C02841 extends AbstractViewOnClickListenerC12733a {
                final ImageView val$colorImage;
                final Context val$context;

                public class C02851 implements H3.e {
                    public C02851() {
                    }

                    @Override
                    public String getSelected() {
                        return Matcap.access$000(AnonymousClass1.this.val$finalVar);
                    }

                    @Override
                    public void onSelected(final String file) {
                        K8.a.I(new Runnable() {
                            @Override
                            public void run() {
                                Matcap.access$002(AnonymousClass1.this.val$finalVar, file);
                                Matcap.access$102(AnonymousClass1.this.val$finalVar, g.G1(file, true, "BaseColor.jpg", "Color.jpg", "Albedo.jpg", "color.jpg"));
                                AnonymousClass1 anonymousClass1 = AnonymousClass1.this;
                                n nVar = anonymousClass1.val$getSetterListener;
                                if (nVar != null) {
                                    nVar.a(anonymousClass1.val$finalVar);
                                }
                                c.j0(new java.lang.Runnable() {
                                    @Override
                                    public void run() {
                                        C02841 c02841 = C02841.this;
                                        Vc.e.G(c02841.val$colorImage, f.y1(AnonymousClass1.this.val$finalVar.getFile()), C02841.this.val$context);
                                    }
                                });
                            }
                        });
                    }
                }

                public C02841(final ImageView val$colorImage, final Context val$context) {
                    this.val$colorImage = val$colorImage;
                    this.val$context = val$context;
                }

                @Override
                public void click(View view) {
                    f.H1(view, C15147a.e.Left, new C02851());
                }
            }

            public AnonymousClass1(final String val$tittle, final Matcap val$finalVar, final n val$getSetterListener) {
                this.val$tittle = val$tittle;
                this.val$finalVar = val$finalVar;
                this.val$getSetterListener = val$getSetterListener;
            }

            @Override
            public void onCreate(View view, Context context, C5.b entry) {
                ((TextView) view.findViewById(R.id.tittle)).setText(this.val$tittle);
                ImageView imageView = (ImageView) view.findViewById(R.id.imageView6);
                Vc.e.G(imageView, f.y1(this.val$finalVar.getFile()), context);
                imageView.setOnClickListener(new C02841(imageView, context));
            }
        }

        public class C02882 implements e {
            final Matcap val$finalVar;
            final n val$getSetterListener;
            final String val$tittle;

            public class AnonymousClass1 extends AbstractViewOnClickListenerC12733a {
                final ImageView val$colorImage;
                final Context val$context;

                public class C02891 implements H3.e {
                    public C02891() {
                    }

                    @Override
                    public String getSelected() {
                        return Matcap.access$000(C02882.this.val$finalVar);
                    }

                    @Override
                    public void onSelected(final String file) {
                        K8.a.I(new Runnable() {
                            @Override
                            public void run() {
                                Matcap.access$002(C02882.this.val$finalVar, file);
                                Matcap.access$102(C02882.this.val$finalVar, g.G1(file, true, "BaseColor.jpg", "Color.jpg", "Albedo.jpg", "color.jpg"));
                                C02882 c02882 = C02882.this;
                                n nVar = c02882.val$getSetterListener;
                                if (nVar != null) {
                                    nVar.a(c02882.val$finalVar);
                                }
                                c.j0(new java.lang.Runnable() {
                                    @Override
                                    public void run() {
                                        AnonymousClass1 anonymousClass1 = AnonymousClass1.this;
                                        Vc.e.G(anonymousClass1.val$colorImage, f.y1(C02882.this.val$finalVar.getFile()), AnonymousClass1.this.val$context);
                                    }
                                });
                            }
                        });
                    }
                }

                public AnonymousClass1(final ImageView val$colorImage, final Context val$context) {
                    this.val$colorImage = val$colorImage;
                    this.val$context = val$context;
                }

                @Override
                public void click(View view) {
                    f.H1(view, C15147a.e.Left, new C02891());
                }
            }

            public C02882(final String val$tittle, final Matcap val$finalVar, final n val$getSetterListener) {
                this.val$tittle = val$tittle;
                this.val$finalVar = val$finalVar;
                this.val$getSetterListener = val$getSetterListener;
            }

            @Override
            public void onCreate(View view, Context context, C5.b entry) {
                ((TextView) view.findViewById(R.id.tittle)).setText(this.val$tittle);
                ImageView imageView = (ImageView) view.findViewById(R.id.imageView6);
                Vc.e.G(imageView, f.y1(this.val$finalVar.getFile()), context);
                imageView.setOnClickListener(new AnonymousClass1(imageView, context));
            }
        }

        public class AnonymousClass3 implements e {
            final Matcap val$finalVar;
            final n val$getSetterListener;
            final String val$tittle;

            public class AnonymousClass1 extends AbstractViewOnClickListenerC12733a {
                final ImageView val$colorImage;
                final Context val$context;

                public class C02921 implements H3.e {
                    public C02921() {
                    }

                    @Override
                    public String getSelected() {
                        return Matcap.access$000(AnonymousClass3.this.val$finalVar);
                    }

                    @Override
                    public void onSelected(final String file) {
                        K8.a.I(new Runnable() {
                            @Override
                            public void run() {
                                Matcap.access$002(AnonymousClass3.this.val$finalVar, file);
                                Matcap.access$102(AnonymousClass3.this.val$finalVar, g.G1(file, true, "BaseColor.jpg", "Color.jpg", "Albedo.jpg", "color.jpg"));
                                AnonymousClass3 anonymousClass3 = AnonymousClass3.this;
                                n nVar = anonymousClass3.val$getSetterListener;
                                if (nVar != null) {
                                    nVar.a(anonymousClass3.val$finalVar);
                                }
                                c.j0(new java.lang.Runnable() {
                                    @Override
                                    public void run() {
                                        AnonymousClass1 anonymousClass1 = AnonymousClass1.this;
                                        Vc.e.G(anonymousClass1.val$colorImage, f.y1(AnonymousClass3.this.val$finalVar.getFile()), AnonymousClass1.this.val$context);
                                    }
                                });
                            }
                        });
                    }
                }

                public AnonymousClass1(final ImageView val$colorImage, final Context val$context) {
                    this.val$colorImage = val$colorImage;
                    this.val$context = val$context;
                }

                @Override
                public void click(View view) {
                    f.H1(view, C15147a.e.Left, new C02921());
                }
            }

            public AnonymousClass3(final String val$tittle, final Matcap val$finalVar, final n val$getSetterListener) {
                this.val$tittle = val$tittle;
                this.val$finalVar = val$finalVar;
                this.val$getSetterListener = val$getSetterListener;
            }

            @Override
            public void onCreate(View view, Context context, C5.b entry) {
                ((TextView) view.findViewById(R.id.tittle)).setText(this.val$tittle);
                ImageView imageView = (ImageView) view.findViewById(R.id.imageView6);
                Vc.e.G(imageView, f.y1(this.val$finalVar.getFile()), context);
                imageView.setOnClickListener(new AnonymousClass1(imageView, context));
            }
        }

        public AnonymousClass2(final Class val$thisClass) {
            this.val$thisClass = val$thisClass;
        }

        @Override
        public C5.b getInspector(Context context, Field field, Object classInstance, String tittle, n getSetterListener, q userPointer) {
            Matcap matcap;
            try {
                matcap = (Matcap) field.get(classInstance);
            } catch (IllegalAccessException e10) {
                e10.printStackTrace();
                matcap = null;
            }
            return new C5.b(new AnonymousClass1(tittle, matcap, getSetterListener), R.layout.inspector_component_texture, (Object) null);
        }

        @Override
        public C5.b getInspectorForArray(Context context, Object[] array, int position, Object classInstance, String tittle, n getSetterListener, q userPointer) {
            return new C5.b(new C02882(tittle, (Matcap) array[position], getSetterListener), R.layout.inspector_component_texture, (Object) null);
        }

        @Override
        public C5.b getInspectorForList(Context context, h list, int position, Object classInstance, String tittle, n getSetterListener, q userPointer) {
            return new C5.b(new AnonymousClass3(tittle, (Matcap) list.a(position), getSetterListener), R.layout.inspector_component_texture, (Object) null);
        }

        @Override
        public String getSimpleName(q userPointer) {
            return this.val$thisClass.getSimpleName();
        }

        @Override
        public boolean isRestorable() {
            return true;
        }

        @Override
        public boolean match(String className, q userPointer) {
            return j.y(this.val$thisClass.getName()).equals(j.y(className));
        }

        @Override
        public Object newInstance(q userPointer) {
            return new Matcap(null);
        }

        @Override
        public Object restore(Variable variable, q userPointer) {
            String str;
            if (variable.type != Variable.a.Matcap || (str = variable.str_value) == null || str.isEmpty()) {
                return null;
            }
            return Matcap.fromJson(variable.str_value);
        }

        @Override
        public Variable save(String fieldName, Object value, q userPointer) {
            Matcap matcap = (Matcap) value;
            return matcap != null ? new Variable(fieldName, matcap.toJson(), Variable.a.Matcap) : new Variable(fieldName, "", Variable.a.Matcap);
        }
    }

    public Texture getTexture() {
        return null;
    }
}
