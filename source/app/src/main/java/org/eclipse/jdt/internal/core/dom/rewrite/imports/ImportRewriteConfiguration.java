package org.eclipse.jdt.internal.core.dom.rewrite.imports;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import org.eclipse.jdt.core.ICompilationUnit;
import org.eclipse.jdt.core.IJavaElement;
import org.eclipse.jdt.core.IPackageDeclaration;
import org.eclipse.jdt.core.JavaModelException;
import org.eclipse.jdt.internal.core.JavaProject;

public final class ImportRewriteConfiguration {
    final ImplicitImportIdentification implicitImportIdentification;
    final List<String> importOrder;
    final OriginalImportHandling originalImportHandling;
    final ImportContainerSorting staticContainerSorting;
    final int staticOnDemandThreshold;
    final ImportContainerSorting typeContainerSorting;
    final int typeOnDemandThreshold;

    public static class Builder {
        final OriginalImportHandling originalImportHandling;
        ImportContainerSorting typeContainerSorting = ImportContainerSorting.BY_PACKAGE;
        ImportContainerSorting staticContainerSorting = ImportContainerSorting.BY_PACKAGE_AND_CONTAINING_TYPE;
        ImplicitImportIdentification implicitImportIdentification = ImplicitImportIdentification.JAVA_LANG_AND_CU_PACKAGE;
        List<String> importOrder = Collections.emptyList();
        Integer typeOnDemandThreshold = null;
        Integer staticOnDemandThreshold = null;

        private Builder(OriginalImportHandling originalImportHandling) {
            this.originalImportHandling = originalImportHandling;
        }

        public static Builder discardingOriginalImports() {
            return new Builder(OriginalImportHandling.DISCARD);
        }

        public static Builder preservingOriginalImports() {
            return new Builder(OriginalImportHandling.PRESERVE_IN_ORDER);
        }

        public ImportRewriteConfiguration build() {
            return new ImportRewriteConfiguration(this);
        }

        public Builder setImplicitImportIdentification(ImplicitImportIdentification implicitImportIdentification) {
            this.implicitImportIdentification = implicitImportIdentification;
            return this;
        }

        public Builder setImportOrder(List<String> list) {
            this.importOrder = Collections.unmodifiableList(new ArrayList(list));
            return this;
        }

        public Builder setStaticContainerSorting(ImportContainerSorting importContainerSorting) {
            this.staticContainerSorting = importContainerSorting;
            return this;
        }

        public Builder setStaticOnDemandThreshold(int i10) {
            this.staticOnDemandThreshold = Integer.valueOf(i10);
            return this;
        }

        public Builder setTypeContainerSorting(ImportContainerSorting importContainerSorting) {
            this.typeContainerSorting = importContainerSorting;
            return this;
        }

        public Builder setTypeOnDemandThreshold(int i10) {
            this.typeOnDemandThreshold = Integer.valueOf(i10);
            return this;
        }
    }

    public enum ImplicitImportIdentification {
        JAVA_LANG_AND_CU_PACKAGE {
            @Override
            public Set<String> determineImplicitImportContainers(ICompilationUnit iCompilationUnit) {
                HashSet hashSet = new HashSet();
                hashSet.add("java.lang");
                IJavaElement parent = iCompilationUnit.getParent();
                String elementName = parent.getElementName();
                if (elementName.isEmpty() && !parent.exists() && iCompilationUnit.exists()) {
                    try {
                        IPackageDeclaration[] packageDeclarations = iCompilationUnit.getPackageDeclarations();
                        if (packageDeclarations.length > 0) {
                            hashSet.add(packageDeclarations[0].getElementName());
                            return hashSet;
                        }
                    } catch (JavaModelException unused) {
                    }
                }
                hashSet.add(elementName);
                return hashSet;
            }
        },
        NONE {
            @Override
            public Set<String> determineImplicitImportContainers(ICompilationUnit iCompilationUnit) {
                return Collections.emptySet();
            }
        };

        public static ImplicitImportIdentification[] valuesCustom() {
            ImplicitImportIdentification[] valuesCustom = values();
            int length = valuesCustom.length;
            ImplicitImportIdentification[] implicitImportIdentificationArr = new ImplicitImportIdentification[length];
            System.arraycopy(valuesCustom, 0, implicitImportIdentificationArr, 0, length);
            return implicitImportIdentificationArr;
        }

        public abstract Set<String> determineImplicitImportContainers(ICompilationUnit iCompilationUnit);

        ImplicitImportIdentification(ImplicitImportIdentification implicitImportIdentification) {
            this();
        }
    }

    public enum ImportContainerSorting {
        BY_PACKAGE_AND_CONTAINING_TYPE {
            @Override
            public Comparator<ImportName> createContainerComparator(JavaProject javaProject) {
                return new PackageAndContainingTypeImportComparator();
            }
        },
        BY_PACKAGE {
            @Override
            public Comparator<ImportName> createContainerComparator(JavaProject javaProject) {
                return new PackageImportComparator(javaProject);
            }
        };

        public static ImportContainerSorting[] valuesCustom() {
            ImportContainerSorting[] valuesCustom = values();
            int length = valuesCustom.length;
            ImportContainerSorting[] importContainerSortingArr = new ImportContainerSorting[length];
            System.arraycopy(valuesCustom, 0, importContainerSortingArr, 0, length);
            return importContainerSortingArr;
        }

        public abstract Comparator<ImportName> createContainerComparator(JavaProject javaProject);

        ImportContainerSorting(ImportContainerSorting importContainerSorting) {
            this();
        }
    }

    public enum OriginalImportHandling {
        DISCARD {
            @Override
            public ImportAdder createImportAdder(Comparator<ImportName> comparator) {
                return new ReorderingImportAdder(comparator);
            }

            @Override
            public boolean shouldFixAllLineDelimiters() {
                return true;
            }

            @Override
            public boolean shouldRemoveOriginalImports() {
                return true;
            }
        },
        PRESERVE_IN_ORDER {
            @Override
            public ImportAdder createImportAdder(Comparator<ImportName> comparator) {
                return new OrderPreservingImportAdder(comparator);
            }

            @Override
            public boolean shouldFixAllLineDelimiters() {
                return false;
            }

            @Override
            public boolean shouldRemoveOriginalImports() {
                return false;
            }
        };

        public static OriginalImportHandling[] valuesCustom() {
            OriginalImportHandling[] valuesCustom = values();
            int length = valuesCustom.length;
            OriginalImportHandling[] originalImportHandlingArr = new OriginalImportHandling[length];
            System.arraycopy(valuesCustom, 0, originalImportHandlingArr, 0, length);
            return originalImportHandlingArr;
        }

        public abstract ImportAdder createImportAdder(Comparator<ImportName> comparator);

        public abstract boolean shouldFixAllLineDelimiters();

        public abstract boolean shouldRemoveOriginalImports();

        OriginalImportHandling(OriginalImportHandling originalImportHandling) {
            this();
        }
    }

    public ImportRewriteConfiguration(Builder builder) {
        this.originalImportHandling = builder.originalImportHandling;
        this.typeContainerSorting = builder.typeContainerSorting;
        this.staticContainerSorting = builder.staticContainerSorting;
        this.implicitImportIdentification = builder.implicitImportIdentification;
        this.importOrder = builder.importOrder;
        this.typeOnDemandThreshold = builder.typeOnDemandThreshold.intValue();
        this.staticOnDemandThreshold = builder.staticOnDemandThreshold.intValue();
    }
}
