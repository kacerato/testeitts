package org.eclipse.jdt.internal.compiler.env;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.function.Consumer;
import org.eclipse.jdt.core.compiler.CharOperation;
import org.eclipse.jdt.internal.compiler.util.SimpleSetOfCharArray;

public interface IUpdatableModule {

    public static class AddExports implements Consumer<IUpdatableModule> {
        char[] name;
        char[][] targets;

        public AddExports(char[] cArr, char[][] cArr2) {
            this.name = cArr;
            this.targets = cArr2;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof AddExports)) {
                return false;
            }
            AddExports addExports = (AddExports) obj;
            return CharOperation.equals(this.name, addExports.name) && CharOperation.equals(this.targets, addExports.targets);
        }

        public UpdateKind getKind() {
            return UpdateKind.PACKAGE;
        }

        public char[] getName() {
            return this.name;
        }

        public char[][] getTargetModules() {
            return this.targets;
        }

        public int hashCode() {
            int hashCode = CharOperation.hashCode(this.name);
            if (this.targets != null) {
                int i10 = 0;
                while (true) {
                    char[][] cArr = this.targets;
                    if (i10 >= cArr.length) {
                        break;
                    }
                    hashCode += CharOperation.hashCode(cArr[i10]) * 17;
                    i10++;
                }
            }
            return hashCode;
        }

        @Override
        public void accept(IUpdatableModule iUpdatableModule) {
            iUpdatableModule.addExports(this.name, this.targets);
        }
    }

    public static class AddReads implements Consumer<IUpdatableModule> {
        char[] targetModule;

        public AddReads(char[] cArr) {
            this.targetModule = cArr;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj instanceof AddReads) {
                return CharOperation.equals(this.targetModule, ((AddReads) obj).targetModule);
            }
            return false;
        }

        public UpdateKind getKind() {
            return UpdateKind.MODULE;
        }

        public char[] getTarget() {
            return this.targetModule;
        }

        public int hashCode() {
            return CharOperation.hashCode(this.targetModule);
        }

        @Override
        public void accept(IUpdatableModule iUpdatableModule) {
            iUpdatableModule.addReads(this.targetModule);
        }
    }

    public enum UpdateKind {
        MODULE,
        PACKAGE;

        public static UpdateKind[] valuesCustom() {
            UpdateKind[] valuesCustom = values();
            int length = valuesCustom.length;
            UpdateKind[] updateKindArr = new UpdateKind[length];
            System.arraycopy(valuesCustom, 0, updateKindArr, 0, length);
            return updateKindArr;
        }
    }

    public static class UpdatesByKind {
        private static int[] $SWITCH_TABLE$org$eclipse$jdt$internal$compiler$env$IUpdatableModule$UpdateKind;
        List<Consumer<IUpdatableModule>> moduleUpdates = Collections.emptyList();
        List<Consumer<IUpdatableModule>> packageUpdates = Collections.emptyList();

        public static int[] $SWITCH_TABLE$org$eclipse$jdt$internal$compiler$env$IUpdatableModule$UpdateKind() {
            int[] iArr = $SWITCH_TABLE$org$eclipse$jdt$internal$compiler$env$IUpdatableModule$UpdateKind;
            if (iArr != null) {
                return iArr;
            }
            int[] iArr2 = new int[UpdateKind.valuesCustom().length];
            try {
                iArr2[UpdateKind.MODULE.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr2[UpdateKind.PACKAGE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            $SWITCH_TABLE$org$eclipse$jdt$internal$compiler$env$IUpdatableModule$UpdateKind = iArr2;
            return iArr2;
        }

        public List<Consumer<IUpdatableModule>> getList(UpdateKind updateKind, boolean z10) {
            int i10 = $SWITCH_TABLE$org$eclipse$jdt$internal$compiler$env$IUpdatableModule$UpdateKind()[updateKind.ordinal()];
            if (i10 == 1) {
                if (this.moduleUpdates == Collections.EMPTY_LIST && z10) {
                    this.moduleUpdates = new ArrayList();
                }
                return this.moduleUpdates;
            }
            if (i10 != 2) {
                throw new IllegalArgumentException("Unknown enum value " + ((Object) updateKind));
            }
            if (this.packageUpdates == Collections.EMPTY_LIST && z10) {
                this.packageUpdates = new ArrayList();
            }
            return this.packageUpdates;
        }
    }

    void addExports(char[] cArr, char[][] cArr2);

    void addReads(char[] cArr);

    char[] name();

    void setMainClassName(char[] cArr);

    void setPackageNames(SimpleSetOfCharArray simpleSetOfCharArray);
}
