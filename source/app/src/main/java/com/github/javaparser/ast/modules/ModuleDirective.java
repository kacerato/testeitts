package com.github.javaparser.ast.modules;

import com.github.javaparser.TokenRange;
import com.github.javaparser.ast.AllFieldsConstructor;
import com.github.javaparser.ast.Node;
import com.github.javaparser.ast.visitor.CloneVisitor;
import com.github.javaparser.metamodel.JavaParserMetaModel;
import com.github.javaparser.metamodel.ModuleDirectiveMetaModel;
import com.github.javaparser.utils.CodeGenerationUtils;
import java.util.Optional;
import java.util.function.Consumer;

public abstract class ModuleDirective extends Node {
    @AllFieldsConstructor
    public ModuleDirective() {
        this(null);
    }

    public ModuleExportsDirective asModuleExportsDirective() {
        throw new IllegalStateException(CodeGenerationUtils.f("%s is not ModuleExportsDirective, it is %s", this, getClass().getSimpleName()));
    }

    public ModuleExportsDirective asModuleExportsStmt() {
        throw new IllegalStateException(CodeGenerationUtils.f("%s is not an ModuleExportsDirective", this));
    }

    public ModuleOpensDirective asModuleOpensDirective() {
        throw new IllegalStateException(CodeGenerationUtils.f("%s is not ModuleOpensDirective, it is %s", this, getClass().getSimpleName()));
    }

    public ModuleOpensDirective asModuleOpensStmt() {
        throw new IllegalStateException(CodeGenerationUtils.f("%s is not an ModuleOpensDirective", this));
    }

    public ModuleProvidesDirective asModuleProvidesDirective() {
        throw new IllegalStateException(CodeGenerationUtils.f("%s is not ModuleProvidesDirective, it is %s", this, getClass().getSimpleName()));
    }

    public ModuleProvidesDirective asModuleProvidesStmt() {
        throw new IllegalStateException(CodeGenerationUtils.f("%s is not an ModuleProvidesDirective", this));
    }

    public ModuleRequiresDirective asModuleRequiresDirective() {
        throw new IllegalStateException(CodeGenerationUtils.f("%s is not ModuleRequiresDirective, it is %s", this, getClass().getSimpleName()));
    }

    public ModuleRequiresDirective asModuleRequiresStmt() {
        throw new IllegalStateException(CodeGenerationUtils.f("%s is not an ModuleRequiresDirective", this));
    }

    public ModuleUsesDirective asModuleUsesDirective() {
        throw new IllegalStateException(CodeGenerationUtils.f("%s is not ModuleUsesDirective, it is %s", this, getClass().getSimpleName()));
    }

    public ModuleUsesDirective asModuleUsesStmt() {
        throw new IllegalStateException(CodeGenerationUtils.f("%s is not an ModuleUsesDirective", this));
    }

    public void ifModuleExportsDirective(Consumer<ModuleExportsDirective> action) {
    }

    public void ifModuleExportsStmt(Consumer<ModuleExportsDirective> action) {
    }

    public void ifModuleOpensDirective(Consumer<ModuleOpensDirective> action) {
    }

    public void ifModuleOpensStmt(Consumer<ModuleOpensDirective> action) {
    }

    public void ifModuleProvidesDirective(Consumer<ModuleProvidesDirective> action) {
    }

    public void ifModuleProvidesStmt(Consumer<ModuleProvidesDirective> action) {
    }

    public void ifModuleRequiresDirective(Consumer<ModuleRequiresDirective> action) {
    }

    public void ifModuleRequiresStmt(Consumer<ModuleRequiresDirective> action) {
    }

    public void ifModuleUsesDirective(Consumer<ModuleUsesDirective> action) {
    }

    public void ifModuleUsesStmt(Consumer<ModuleUsesDirective> action) {
    }

    public boolean isModuleExportsDirective() {
        return false;
    }

    public boolean isModuleExportsStmt() {
        return false;
    }

    public boolean isModuleOpensDirective() {
        return false;
    }

    public boolean isModuleOpensStmt() {
        return false;
    }

    public boolean isModuleProvidesDirective() {
        return false;
    }

    public boolean isModuleProvidesStmt() {
        return false;
    }

    public boolean isModuleRequiresDirective() {
        return false;
    }

    public boolean isModuleRequiresStmt() {
        return false;
    }

    public boolean isModuleUsesDirective() {
        return false;
    }

    public boolean isModuleUsesStmt() {
        return false;
    }

    public Optional<ModuleExportsDirective> toModuleExportsDirective() {
        return Optional.empty();
    }

    public Optional<ModuleExportsDirective> toModuleExportsStmt() {
        return Optional.empty();
    }

    public Optional<ModuleOpensDirective> toModuleOpensDirective() {
        return Optional.empty();
    }

    public Optional<ModuleOpensDirective> toModuleOpensStmt() {
        return Optional.empty();
    }

    public Optional<ModuleProvidesDirective> toModuleProvidesDirective() {
        return Optional.empty();
    }

    public Optional<ModuleProvidesDirective> toModuleProvidesStmt() {
        return Optional.empty();
    }

    public Optional<ModuleRequiresDirective> toModuleRequiresDirective() {
        return Optional.empty();
    }

    public Optional<ModuleRequiresDirective> toModuleRequiresStmt() {
        return Optional.empty();
    }

    public Optional<ModuleUsesDirective> toModuleUsesDirective() {
        return Optional.empty();
    }

    public Optional<ModuleUsesDirective> toModuleUsesStmt() {
        return Optional.empty();
    }

    public ModuleDirective(TokenRange tokenRange) {
        super(tokenRange);
        customInitialization();
    }

    @Override
    public ModuleDirectiveMetaModel getMetaModel() {
        return JavaParserMetaModel.moduleDirectiveMetaModel;
    }

    @Override
    public ModuleDirective mo1220clone() {
        return (ModuleDirective) accept(new CloneVisitor(), (CloneVisitor) null);
    }
}
