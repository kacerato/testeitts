package JAVARuntime;

import F6.d;
import M7.c;
import M7.g;
import android.content.Context;
import android.text.Editable;
import android.text.TextWatcher;
import android.view.View;
import com.itsmagic.engine.Activities.Editor.Panels.Scripting.Interfaces.SuperClasses.TextInterface;
import com.itsmagic.engine2.R;
import d8.m;
import java.util.List;
import jd.C13823b;
import o8.InterfaceC14490d;
import org.blacksquircle.ui.editorkit.utils.EditorTheme;
import org.blacksquircle.ui.editorkit.utils.RequestLineTips;
import org.blacksquircle.ui.language.base.Language;
import org.blacksquircle.ui.language.base.parser.LanguageParser;
import org.blacksquircle.ui.language.base.provider.SuggestionProvider;
import org.blacksquircle.ui.language.base.styler.LanguageStyler;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/Builder/aab_release.zip:base/assets/javaruntimelibraries.zip:TextScriptingExtension.class
  base.apk:assets/Editor/Builder/app_release.zip:assets/javaruntimelibraries.zip:TextScriptingExtension.class
  classes.dex
 */
public class TextScriptingExtension extends ScriptingExtension {

    public class AnonymousClass1 extends TextInterface {
        private boolean inited = false;
        private TextWatcher textWatcher = null;

        public AnonymousClass1() {
        }

        public java.io.File convert(C13823b pFile) {
            return new java.io.File(com.itsmagic.engine.Core.Components.ProjectController.a.S(getContext()) + "/", pFile.f());
        }

        public void displayTips(int x10, int y10, String text) {
            J6.a.A1(x10, y10, text, "");
        }

        public RequestLineTips.Type convertFromJavaRuntime(LineTip sUnitType) {
            return RequestLineTips.Type.valueOf(sUnitType.toString());
        }

        public LineTip convertToJavaRuntime(RequestLineTips.Type unitType) {
            return LineTip.valueOf(unitType.toString());
        }

        @Override
        public d duplicate() {
            return TextScriptingExtension.access$300(TextScriptingExtension.this);
        }

        @Override
        public boolean hasScript() {
            final boolean[] zArr = {false};
            m.d(new InterfaceC14490d() {
                @Override
                public void run() {
                    zArr[0] = TextScriptingExtension.this.hasScript();
                }
            });
            return zArr[0];
        }

        @Override
        public void inflateTopBarElements(Context context, List<g> elements) {
            elements.add(new c(R.drawable.save_v2, new M7.d() {
                @Override
                public void onClick(View v10, Context context2, c tbButton) {
                    m.d(new InterfaceC14490d() {
                        @Override
                        public void run() {
                            TextScriptingExtension.this.saveScript();
                        }
                    });
                }
            }, c.b.Disconnected, context).m0(Nc.b.k0(24.0f)));
            super.inflateTopBarElements(context, elements);
        }

        @Override
        public void init() {
            super.init();
            if (this.inited) {
                return;
            }
            setDefaultConfigs();
            setColorTheme(EditorTheme.INSTANCE.getDARCULA());
            setRequestLineTips(new RequestLineTips() {
                @Override
                public RequestLineTips.Type getTypeForLine(final int line, boolean isLatest) {
                    final LineTip[] lineTipArr = {null};
                    m.d(new InterfaceC14490d() {
                        @Override
                        public void run() {
                            lineTipArr[0] = TextScriptingExtension.this.getTipForLine(line);
                        }
                    });
                    return AnonymousClass1.this.convertFromJavaRuntime(lineTipArr[0]);
                }

                @Override
                public void showLineTips(final int line, int x10, int y10, boolean isLatest) {
                    final String[] strArr = {null};
                    m.d(new InterfaceC14490d() {
                        @Override
                        public void run() {
                            strArr[0] = TextScriptingExtension.this.getTipTextForLine(line);
                        }
                    });
                    AnonymousClass1.this.displayTips(x10, y10, strArr[0]);
                }
            });
            setLanguage(TextScriptingExtension.access$200(TextScriptingExtension.this));
            if (this.textWatcher == null) {
                TextWatcher textWatcher = new TextWatcher() {
                    @Override
                    public void afterTextChanged(final Editable editable) {
                        m.d(new InterfaceC14490d() {
                            @Override
                            public void run() {
                                TextScriptingExtension.this.afterTextChanged(editable);
                            }
                        });
                    }

                    @Override
                    public void beforeTextChanged(final CharSequence charSequence, final int start, final int before, final int count) {
                        m.d(new InterfaceC14490d() {
                            @Override
                            public void run() {
                                TextScriptingExtension.this.beforeTextChanged(charSequence, start, before, count);
                            }
                        });
                    }

                    @Override
                    public void onTextChanged(final CharSequence charSequence, final int start, final int before, final int count) {
                        m.d(new InterfaceC14490d() {
                            @Override
                            public void run() {
                                TextScriptingExtension.this.onTextChanged(charSequence, start, before, count);
                            }
                        });
                    }
                };
                this.textWatcher = textWatcher;
                addTextWatcher(textWatcher);
            }
            m.d(new InterfaceC14490d() {
                @Override
                public void run() {
                    TextScriptingExtension.this.init();
                }
            });
            this.inited = true;
        }

        @Override
        public void onClose(Context context) {
            m.d(new InterfaceC14490d() {
                @Override
                public void run() {
                    TextScriptingExtension.this.onClose();
                }
            });
        }

        @Override
        public void openScript(final C13823b script, Context context) {
            init();
            m.d(new InterfaceC14490d() {
                @Override
                public void run() {
                    TextScriptingExtension.this.openScript(new File(AnonymousClass1.this.convert(script), true));
                }
            });
        }

        @Override
        public void replaceScript(final C13823b script, Context context) {
            m.d(new InterfaceC14490d() {
                @Override
                public void run() {
                    TextScriptingExtension.this.replaceScript(new File(AnonymousClass1.this.convert(script), true));
                }
            });
        }

        @Override
        public boolean saveScript(Context context) {
            final boolean[] zArr = {false};
            m.d(new InterfaceC14490d() {
                @Override
                public void run() {
                    zArr[0] = TextScriptingExtension.this.saveScript();
                }
            });
            return zArr[0];
        }

        @Override
        public boolean supportFile(final C13823b file) {
            final boolean[] zArr = {false};
            m.d(new InterfaceC14490d() {
                @Override
                public void run() {
                    zArr[0] = TextScriptingExtension.this.supportFile(new File(AnonymousClass1.this.convert(file), true));
                }
            });
            return zArr[0];
        }

        @Override
        public void unload() {
            super.unload();
            TextWatcher textWatcher = this.textWatcher;
            if (textWatcher != null) {
                removeTextWatcher(textWatcher);
                this.textWatcher = null;
            }
            m.d(new InterfaceC14490d() {
                @Override
                public void run() {
                    TextScriptingExtension.this.unload();
                }
            });
        }
    }

    public class AnonymousClass2 implements Language {
        public AnonymousClass2() {
        }

        @Override
        public String getName() {
            return "Custom language";
        }

        @Override
        public LanguageParser getParser() {
            return null;
        }

        @Override
        public SuggestionProvider getProvider() {
            return TextScriptingExtension.access$400(TextScriptingExtension.this);
        }

        @Override
        public LanguageStyler getStyler() {
            return TextScriptingExtension.access$500(TextScriptingExtension.this);
        }
    }

    public class AnonymousClass3 implements A6.c {
        public AnonymousClass3() {
        }

        @Override
        public TextScriptingTheme getTheme() {
            return TextScriptingExtension.access$600(TextScriptingExtension.this);
        }
    }

    /* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/Builder/aab_release.zip:base/assets/javaruntimelibraries.zip:TextScriptingExtension$LineTip.class
  base.apk:assets/Editor/Builder/app_release.zip:assets/javaruntimelibraries.zip:TextScriptingExtension$LineTip.class
  classes.dex
 */
    public enum LineTip {
        None,
        Error,
        Alert;

        public static LineTip[] valuesCustom() {
            LineTip[] valuesCustom = values();
            int length = valuesCustom.length;
            LineTip[] lineTipArr = new LineTip[length];
            java.lang.System.arraycopy(valuesCustom, 0, lineTipArr, 0, length);
            return lineTipArr;
        }
    }

    public String getText() {
        return "";
    }

    public void setText(String str) {
    }

    public void setTheme(TextScriptingTheme textScriptingTheme) {
    }

    public void setProvider(TextScriptingProvider textScriptingProvider) {
    }

    public void setStyler(TextScriptingStyler textScriptingStyler) {
    }

    public LineTip getTipForLine(int i10) {
        return LineTip.None;
    }

    public String getTipTextForLine(int i10) {
        return "";
    }

    @Override
    public void replaceScript(File file) {
    }

    @Override
    public void openScript(File file) {
    }

    @Override
    public void onClose() {
    }

    @Override
    public void init() {
    }

    @Override
    public void unload() {
    }

    @Override
    public boolean saveScript() {
        return false;
    }

    @Override
    public boolean hasScript() {
        return false;
    }

    @Override
    public boolean supportFile(File file) {
        return false;
    }

    public void beforeTextChanged(CharSequence charSequence, int i10, int i11, int i12) {
    }

    public void onTextChanged(CharSequence charSequence, int i10, int i11, int i12) {
    }

    public void afterTextChanged(Editable editable) {
    }
}
