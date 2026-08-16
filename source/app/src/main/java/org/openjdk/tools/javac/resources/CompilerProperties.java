package org.openjdk.tools.javac.resources;

import java.io.File;
import java.nio.file.Path;
import java.util.List;
import java.util.Set;
import org.openjdk.javax.lang.model.element.Modifier;
import org.openjdk.javax.tools.JavaFileObject;
import org.openjdk.tools.javac.code.Kinds;
import org.openjdk.tools.javac.code.Source;
import org.openjdk.tools.javac.code.Symbol;
import org.openjdk.tools.javac.code.Type;
import org.openjdk.tools.javac.main.Option;
import org.openjdk.tools.javac.parser.Tokens;
import org.openjdk.tools.javac.util.JCDiagnostic;
import org.openjdk.tools.javac.util.Name;

public class CompilerProperties {

    public static class Errors {
        public static final JCDiagnostic.Error AbstractMethCantHaveBody = new JCDiagnostic.Error("compiler", "abstract.meth.cant.have.body", new Object[0]);
        public static final JCDiagnostic.Error AddmodsAllModulePathInvalid = new JCDiagnostic.Error("compiler", "addmods.all.module.path.invalid", new Object[0]);
        public static final JCDiagnostic.Error AlreadyAnnotated = new JCDiagnostic.Error("compiler", "already.annotated", new Object[0]);
        public static final JCDiagnostic.Error AlreadyDefinedThisUnit = new JCDiagnostic.Error("compiler", "already.defined.this.unit", new Object[0]);
        public static final JCDiagnostic.Error AnnotationTypeNotApplicable = new JCDiagnostic.Error("compiler", "annotation.type.not.applicable", new Object[0]);
        public static final JCDiagnostic.Error AnnotationValueMustBeAnnotation = new JCDiagnostic.Error("compiler", "annotation.value.must.be.annotation", new Object[0]);
        public static final JCDiagnostic.Error AnnotationValueMustBeNameValue = new JCDiagnostic.Error("compiler", "annotation.value.must.be.name.value", new Object[0]);
        public static final JCDiagnostic.Error AnnotationValueNotAllowableType = new JCDiagnostic.Error("compiler", "annotation.value.not.allowable.type", new Object[0]);
        public static final JCDiagnostic.Error AnonClassImplIntfNoArgs = new JCDiagnostic.Error("compiler", "anon.class.impl.intf.no.args", new Object[0]);
        public static final JCDiagnostic.Error AnonClassImplIntfNoQualForNew = new JCDiagnostic.Error("compiler", "anon.class.impl.intf.no.qual.for.new", new Object[0]);
        public static final JCDiagnostic.Error AnonClassImplIntfNoTypeargs = new JCDiagnostic.Error("compiler", "anon.class.impl.intf.no.typeargs", new Object[0]);
        public static final JCDiagnostic.Error ArrayAndReceiver = new JCDiagnostic.Error("compiler", "array.and.receiver ", new Object[0]);
        public static final JCDiagnostic.Error ArrayDimensionMissing = new JCDiagnostic.Error("compiler", "array.dimension.missing", new Object[0]);
        public static final JCDiagnostic.Error AssertAsIdentifier = new JCDiagnostic.Error("compiler", "assert.as.identifier", new Object[0]);
        public static final JCDiagnostic.Error AttributeValueMustBeConstant = new JCDiagnostic.Error("compiler", "attribute.value.must.be.constant", new Object[0]);
        public static final JCDiagnostic.Error BadFunctionalIntfAnno = new JCDiagnostic.Error("compiler", "bad.functional.intf.anno", new Object[0]);
        public static final JCDiagnostic.Error BreakOutsideSwitchLoop = new JCDiagnostic.Error("compiler", "break.outside.switch.loop", new Object[0]);
        public static final JCDiagnostic.Error CannotCreateArrayWithDiamond = new JCDiagnostic.Error("compiler", "cannot.create.array.with.diamond", new Object[0]);
        public static final JCDiagnostic.Error CannotCreateArrayWithTypeArguments = new JCDiagnostic.Error("compiler", "cannot.create.array.with.type.arguments", new Object[0]);
        public static final JCDiagnostic.Error CantAssignValToThis = new JCDiagnostic.Error("compiler", "cant.assign.val.to.this", new Object[0]);
        public static final JCDiagnostic.Error CantExtendIntfAnnotation = new JCDiagnostic.Error("compiler", "cant.extend.intf.annotation", new Object[0]);
        public static final JCDiagnostic.Error CantInheritFromAnon = new JCDiagnostic.Error("compiler", "cant.inherit.from.anon", new Object[0]);
        public static final JCDiagnostic.Error CantReadFile = new JCDiagnostic.Error("compiler", "cant.read.file", new Object[0]);
        public static final JCDiagnostic.Error CantSelectStaticClassFromParamType = new JCDiagnostic.Error("compiler", "cant.select.static.class.from.param.type", new Object[0]);
        public static final JCDiagnostic.Error CatchWithoutTry = new JCDiagnostic.Error("compiler", "catch.without.try", new Object[0]);
        public static final JCDiagnostic.Error ClassNotAllowed = new JCDiagnostic.Error("compiler", "class.not.allowed", new Object[0]);
        public static final JCDiagnostic.Error ConstExprReq = new JCDiagnostic.Error("compiler", "const.expr.req", new Object[0]);
        public static final JCDiagnostic.Error ContOutsideLoop = new JCDiagnostic.Error("compiler", "cont.outside.loop", new Object[0]);
        public static final JCDiagnostic.Error DcBadEntity = new JCDiagnostic.Error("compiler", "dc.bad.entity", new Object[0]);
        public static final JCDiagnostic.Error DcBadGt = new JCDiagnostic.Error("compiler", "dc.bad.gt", new Object[0]);
        public static final JCDiagnostic.Error DcBadInlineTag = new JCDiagnostic.Error("compiler", "dc.bad.inline.tag", new Object[0]);
        public static final JCDiagnostic.Error DcGtExpected = new JCDiagnostic.Error("compiler", "dc.gt.expected", new Object[0]);
        public static final JCDiagnostic.Error DcIdentifierExpected = new JCDiagnostic.Error("compiler", "dc.identifier.expected", new Object[0]);
        public static final JCDiagnostic.Error DcMalformedHtml = new JCDiagnostic.Error("compiler", "dc.malformed.html", new Object[0]);
        public static final JCDiagnostic.Error DcMissingSemicolon = new JCDiagnostic.Error("compiler", "dc.missing.semicolon", new Object[0]);
        public static final JCDiagnostic.Error DcNoContent = new JCDiagnostic.Error("compiler", "dc.no.content", new Object[0]);
        public static final JCDiagnostic.Error DcNoTagName = new JCDiagnostic.Error("compiler", "dc.no.tag.name", new Object[0]);
        public static final JCDiagnostic.Error DcRefBadParens = new JCDiagnostic.Error("compiler", "dc.ref.bad.parens", new Object[0]);
        public static final JCDiagnostic.Error DcRefSyntaxError = new JCDiagnostic.Error("compiler", "dc.ref.syntax.error", new Object[0]);
        public static final JCDiagnostic.Error DcRefUnexpectedInput = new JCDiagnostic.Error("compiler", "dc.ref.unexpected.input", new Object[0]);
        public static final JCDiagnostic.Error DcUnexpectedContent = new JCDiagnostic.Error("compiler", "dc.unexpected.content", new Object[0]);
        public static final JCDiagnostic.Error DcUnterminatedInlineTag = new JCDiagnostic.Error("compiler", "dc.unterminated.inline.tag", new Object[0]);
        public static final JCDiagnostic.Error DcUnterminatedSignature = new JCDiagnostic.Error("compiler", "dc.unterminated.signature", new Object[0]);
        public static final JCDiagnostic.Error DcUnterminatedString = new JCDiagnostic.Error("compiler", "dc.unterminated.string", new Object[0]);
        public static final JCDiagnostic.Error DefaultAllowedInIntfAnnotationMember = new JCDiagnostic.Error("compiler", "default.allowed.in.intf.annotation.member", new Object[0]);
        public static final JCDiagnostic.Error DotClassExpected = new JCDiagnostic.Error("compiler", "dot.class.expected", new Object[0]);
        public static final JCDiagnostic.Error DuplicateCaseLabel = new JCDiagnostic.Error("compiler", "duplicate.case.label", new Object[0]);
        public static final JCDiagnostic.Error DuplicateDefaultLabel = new JCDiagnostic.Error("compiler", "duplicate.default.label", new Object[0]);
        public static final JCDiagnostic.Error ElseWithoutIf = new JCDiagnostic.Error("compiler", "else.without.if", new Object[0]);
        public static final JCDiagnostic.Error EmptyCharLit = new JCDiagnostic.Error("compiler", "empty.char.lit", new Object[0]);
        public static final JCDiagnostic.Error EnumAnnotationMustBeEnumConstant = new JCDiagnostic.Error("compiler", "enum.annotation.must.be.enum.constant", new Object[0]);
        public static final JCDiagnostic.Error EnumAsIdentifier = new JCDiagnostic.Error("compiler", "enum.as.identifier", new Object[0]);
        public static final JCDiagnostic.Error EnumCantBeInstantiated = new JCDiagnostic.Error("compiler", "enum.cant.be.instantiated", new Object[0]);
        public static final JCDiagnostic.Error EnumLabelMustBeUnqualifiedEnum = new JCDiagnostic.Error("compiler", "enum.label.must.be.unqualified.enum", new Object[0]);
        public static final JCDiagnostic.Error EnumNoFinalize = new JCDiagnostic.Error("compiler", "enum.no.finalize", new Object[0]);
        public static final JCDiagnostic.Error EnumNoSubclassing = new JCDiagnostic.Error("compiler", "enum.no.subclassing", new Object[0]);
        public static final JCDiagnostic.Error EnumTypesNotExtensible = new JCDiagnostic.Error("compiler", "enum.types.not.extensible", new Object[0]);
        public static final JCDiagnostic.Error EnumsMustBeStatic = new JCDiagnostic.Error("compiler", "enums.must.be.static", new Object[0]);
        public static final JCDiagnostic.Error Error = new JCDiagnostic.Error("compiler", "error", new Object[0]);
        public static final JCDiagnostic.Error ExpectedModule = new JCDiagnostic.Error("compiler", "expected.module", new Object[0]);
        public static final JCDiagnostic.Error ExpectedModuleOrOpen = new JCDiagnostic.Error("compiler", "expected.module.or.open", new Object[0]);
        public static final JCDiagnostic.Error ExpressionNotAllowableAsAnnotationValue = new JCDiagnostic.Error("compiler", "expression.not.allowable.as.annotation.value", new Object[0]);
        public static final JCDiagnostic.Error FileSbOnSourceOrPatchPathForModule = new JCDiagnostic.Error("compiler", "file.sb.on.source.or.patch.path.for.module", new Object[0]);
        public static final JCDiagnostic.Error FinallyWithoutTry = new JCDiagnostic.Error("compiler", "finally.without.try", new Object[0]);
        public static final JCDiagnostic.Error FpNumberTooLarge = new JCDiagnostic.Error("compiler", "fp.number.too.large", new Object[0]);
        public static final JCDiagnostic.Error FpNumberTooSmall = new JCDiagnostic.Error("compiler", "fp.number.too.small", new Object[0]);
        public static final JCDiagnostic.Error GenericArrayCreation = new JCDiagnostic.Error("compiler", "generic.array.creation", new Object[0]);
        public static final JCDiagnostic.Error GenericThrowable = new JCDiagnostic.Error("compiler", "generic.throwable", new Object[0]);
        public static final JCDiagnostic.Error IllegalDot = new JCDiagnostic.Error("compiler", "illegal.dot", new Object[0]);
        public static final JCDiagnostic.Error IllegalEnumStaticRef = new JCDiagnostic.Error("compiler", "illegal.enum.static.ref", new Object[0]);
        public static final JCDiagnostic.Error IllegalEscChar = new JCDiagnostic.Error("compiler", "illegal.esc.char", new Object[0]);
        public static final JCDiagnostic.Error IllegalForwardRef = new JCDiagnostic.Error("compiler", "illegal.forward.ref", new Object[0]);
        public static final JCDiagnostic.Error IllegalGenericTypeForInstof = new JCDiagnostic.Error("compiler", "illegal.generic.type.for.instof", new Object[0]);
        public static final JCDiagnostic.Error IllegalLineEndInCharLit = new JCDiagnostic.Error("compiler", "illegal.line.end.in.char.lit", new Object[0]);
        public static final JCDiagnostic.Error IllegalNonasciiDigit = new JCDiagnostic.Error("compiler", "illegal.nonascii.digit", new Object[0]);
        public static final JCDiagnostic.Error IllegalSelfRef = new JCDiagnostic.Error("compiler", "illegal.self.ref", new Object[0]);
        public static final JCDiagnostic.Error IllegalStartOfExpr = new JCDiagnostic.Error("compiler", "illegal.start.of.expr", new Object[0]);
        public static final JCDiagnostic.Error IllegalStartOfStmt = new JCDiagnostic.Error("compiler", "illegal.start.of.stmt", new Object[0]);
        public static final JCDiagnostic.Error IllegalStartOfType = new JCDiagnostic.Error("compiler", "illegal.start.of.type", new Object[0]);
        public static final JCDiagnostic.Error IllegalUnderscore = new JCDiagnostic.Error("compiler", "illegal.underscore", new Object[0]);
        public static final JCDiagnostic.Error IllegalUnicodeEsc = new JCDiagnostic.Error("compiler", "illegal.unicode.esc", new Object[0]);
        public static final JCDiagnostic.Error ImproperlyFormedTypeInnerRawParam = new JCDiagnostic.Error("compiler", "improperly.formed.type.inner.raw.param", new Object[0]);
        public static final JCDiagnostic.Error ImproperlyFormedTypeParamMissing = new JCDiagnostic.Error("compiler", "improperly.formed.type.param.missing", new Object[0]);
        public static final JCDiagnostic.Error InitializerMustBeAbleToCompleteNormally = new JCDiagnostic.Error("compiler", "initializer.must.be.able.to.complete.normally", new Object[0]);
        public static final JCDiagnostic.Error InitializerNotAllowed = new JCDiagnostic.Error("compiler", "initializer.not.allowed", new Object[0]);
        public static final JCDiagnostic.Error IntfAnnotationMembersCantHaveParams = new JCDiagnostic.Error("compiler", "intf.annotation.members.cant.have.params", new Object[0]);
        public static final JCDiagnostic.Error IntfAnnotationMembersCantHaveTypeParams = new JCDiagnostic.Error("compiler", "intf.annotation.members.cant.have.type.params", new Object[0]);
        public static final JCDiagnostic.Error IntfExpectedHere = new JCDiagnostic.Error("compiler", "intf.expected.here", new Object[0]);
        public static final JCDiagnostic.Error IntfMethCantHaveBody = new JCDiagnostic.Error("compiler", "intf.meth.cant.have.body", new Object[0]);
        public static final JCDiagnostic.Error IntfNotAllowedHere = new JCDiagnostic.Error("compiler", "intf.not.allowed.here", new Object[0]);
        public static final JCDiagnostic.Error InvalidBinaryNumber = new JCDiagnostic.Error("compiler", "invalid.binary.number", new Object[0]);
        public static final JCDiagnostic.Error InvalidHexNumber = new JCDiagnostic.Error("compiler", "invalid.hex.number", new Object[0]);
        public static final JCDiagnostic.Error InvalidMethDeclRetTypeReq = new JCDiagnostic.Error("compiler", "invalid.meth.decl.ret.type.req", new Object[0]);
        public static final JCDiagnostic.Error InvalidModuleDirective = new JCDiagnostic.Error("compiler", "invalid.module.directive", new Object[0]);
        public static final JCDiagnostic.Error IoException = new JCDiagnostic.Error("compiler", "io.exception", new Object[0]);
        public static final JCDiagnostic.Error LambdaBodyNeitherValueNorVoidCompatible = new JCDiagnostic.Error("compiler", "lambda.body.neither.value.nor.void.compatible", new Object[0]);
        public static final JCDiagnostic.Error LimitCode = new JCDiagnostic.Error("compiler", "limit.code", new Object[0]);
        public static final JCDiagnostic.Error LimitCodeTooLargeForTryStmt = new JCDiagnostic.Error("compiler", "limit.code.too.large.for.try.stmt", new Object[0]);
        public static final JCDiagnostic.Error LimitDimensions = new JCDiagnostic.Error("compiler", "limit.dimensions", new Object[0]);
        public static final JCDiagnostic.Error LimitLocals = new JCDiagnostic.Error("compiler", "limit.locals", new Object[0]);
        public static final JCDiagnostic.Error LimitParameters = new JCDiagnostic.Error("compiler", "limit.parameters", new Object[0]);
        public static final JCDiagnostic.Error LimitPool = new JCDiagnostic.Error("compiler", "limit.pool", new Object[0]);
        public static final JCDiagnostic.Error LimitPoolInClass = new JCDiagnostic.Error("compiler", "limit.pool.in.class", new Object[0]);
        public static final JCDiagnostic.Error LimitStack = new JCDiagnostic.Error("compiler", "limit.stack", new Object[0]);
        public static final JCDiagnostic.Error LimitString = new JCDiagnostic.Error("compiler", "limit.string", new Object[0]);
        public static final JCDiagnostic.Error LimitStringOverflow = new JCDiagnostic.Error("compiler", "limit.string.overflow", new Object[0]);
        public static final JCDiagnostic.Error LocalEnum = new JCDiagnostic.Error("compiler", "local.enum", new Object[0]);
        public static final JCDiagnostic.Error MalformedFpLit = new JCDiagnostic.Error("compiler", "malformed.fp.lit", new Object[0]);
        public static final JCDiagnostic.Error MethodDoesNotOverrideSuperclass = new JCDiagnostic.Error("compiler", "method.does.not.override.superclass", new Object[0]);
        public static final JCDiagnostic.Error MissingMethBodyOrDeclAbstract = new JCDiagnostic.Error("compiler", "missing.meth.body.or.decl.abstract", new Object[0]);
        public static final JCDiagnostic.Error MissingRetStmt = new JCDiagnostic.Error("compiler", "missing.ret.stmt", new Object[0]);
        public static final JCDiagnostic.Error ModuleDeclSbInModuleInfoJava = new JCDiagnostic.Error("compiler", "module.decl.sb.in.module-info.java", new Object[0]);
        public static final JCDiagnostic.Error ModuleNotFoundOnModuleSourcePath = new JCDiagnostic.Error("compiler", "module.not.found.on.module.source.path", new Object[0]);
        public static final JCDiagnostic.Error ModulesourcepathMustBeSpecifiedWithDashMOption = new JCDiagnostic.Error("compiler", "modulesourcepath.must.be.specified.with.dash.m.option", new Object[0]);
        public static final JCDiagnostic.Error NameReservedForInternalUse = new JCDiagnostic.Error("compiler", "name.reserved.for.internal.use", new Object[0]);
        public static final JCDiagnostic.Error NativeMethCantHaveBody = new JCDiagnostic.Error("compiler", "native.meth.cant.have.body", new Object[0]);
        public static final JCDiagnostic.Error NewNotAllowedInAnnotation = new JCDiagnostic.Error("compiler", "new.not.allowed.in.annotation", new Object[0]);
        public static final JCDiagnostic.Error NoAnnotationMember = new JCDiagnostic.Error("compiler", "no.annotation.member", new Object[0]);
        public static final JCDiagnostic.Error NoAnnotationsOnDotClass = new JCDiagnostic.Error("compiler", "no.annotations.on.dot.class", new Object[0]);
        public static final JCDiagnostic.Error NoEnclInstanceOfTypeInScope = new JCDiagnostic.Error("compiler", "no.encl.instance.of.type.in.scope", new Object[0]);
        public static final JCDiagnostic.Error NoIntfExpectedHere = new JCDiagnostic.Error("compiler", "no.intf.expected.here", new Object[0]);
        public static final JCDiagnostic.Error NoMatchEntry = new JCDiagnostic.Error("compiler", "no.match.entry", new Object[0]);
        public static final JCDiagnostic.Error NoOpensUnlessStrong = new JCDiagnostic.Error("compiler", "no.opens.unless.strong", new Object[0]);
        public static final JCDiagnostic.Error NoOutputDir = new JCDiagnostic.Error("compiler", "no.output.dir", new Object[0]);
        public static final JCDiagnostic.Error NoPkgInModuleInfoJava = new JCDiagnostic.Error("compiler", "no.pkg.in.module-info.java", new Object[0]);
        public static final JCDiagnostic.Error NotAnnotationType = new JCDiagnostic.Error("compiler", "not.annotation.type", new Object[0]);
        public static final JCDiagnostic.Error NotInModuleOnModuleSourcePath = new JCDiagnostic.Error("compiler", "not.in.module.on.module.source.path", new Object[0]);
        public static final JCDiagnostic.Error NotStmt = new JCDiagnostic.Error("compiler", "not.stmt", new Object[0]);
        public static final JCDiagnostic.Error OutputDirMustBeSpecifiedWithDashMOption = new JCDiagnostic.Error("compiler", "output.dir.must.be.specified.with.dash.m.option", new Object[0]);
        public static final JCDiagnostic.Error PkgAnnotationsSbInPackageInfoJava = new JCDiagnostic.Error("compiler", "pkg.annotations.sb.in.package-info.java", new Object[0]);
        public static final JCDiagnostic.Error PrematureEof = new JCDiagnostic.Error("compiler", "premature.eof", new Object[0]);
        public static final JCDiagnostic.Error ProcBadConfigFile = new JCDiagnostic.Error("compiler", "proc.bad.config.file", new Object[0]);
        public static final JCDiagnostic.Error ProcCantAccess = new JCDiagnostic.Error("compiler", "proc.cant.access", new Object[0]);
        public static final JCDiagnostic.Error ProcCantCreateLoader = new JCDiagnostic.Error("compiler", "proc.cant.create.loader", new Object[0]);
        public static final JCDiagnostic.Error ProcNoService = new JCDiagnostic.Error("compiler", "proc.no.service", new Object[0]);
        public static final JCDiagnostic.Error ProcProcessorBadOptionName = new JCDiagnostic.Error("compiler", "proc.processor.bad.option.name", new Object[0]);
        public static final JCDiagnostic.Error ProcServiceProblem = new JCDiagnostic.Error("compiler", "proc.service.problem", new Object[0]);
        public static final JCDiagnostic.Error ProcessorpathNoProcessormodulepath = new JCDiagnostic.Error("compiler", "processorpath.no.processormodulepath", new Object[0]);
        public static final JCDiagnostic.Error RecursiveCtorInvocation = new JCDiagnostic.Error("compiler", "recursive.ctor.invocation", new Object[0]);
        public static final JCDiagnostic.Error RepeatedAnnotationTarget = new JCDiagnostic.Error("compiler", "repeated.annotation.target", new Object[0]);
        public static final JCDiagnostic.Error RepeatedInterface = new JCDiagnostic.Error("compiler", "repeated.interface", new Object[0]);
        public static final JCDiagnostic.Error RepeatedModifier = new JCDiagnostic.Error("compiler", "repeated.modifier", new Object[0]);
        public static final JCDiagnostic.Error RetOutsideMeth = new JCDiagnostic.Error("compiler", "ret.outside.meth", new Object[0]);
        public static final JCDiagnostic.Error ServiceImplementationMustBeSubtypeOfServiceInterface = new JCDiagnostic.Error("compiler", "service.implementation.must.be.subtype.of.service.interface", new Object[0]);
        public static final JCDiagnostic.Error ServiceImplementationProviderReturnMustBeSubtypeOfServiceInterface = new JCDiagnostic.Error("compiler", "service.implementation.provider.return.must.be.subtype.of.service.interface", new Object[0]);
        public static final JCDiagnostic.Error SignatureDoesntMatchIntf = new JCDiagnostic.Error("compiler", "signature.doesnt.match.intf", new Object[0]);
        public static final JCDiagnostic.Error SignatureDoesntMatchSupertype = new JCDiagnostic.Error("compiler", "signature.doesnt.match.supertype", new Object[0]);
        public static final JCDiagnostic.Error SourceCantOverwriteInputFile = new JCDiagnostic.Error("compiler", "source.cant.overwrite.input.file", new Object[0]);
        public static final JCDiagnostic.Error StackSimError = new JCDiagnostic.Error("compiler", "stack.sim.error", new Object[0]);
        public static final JCDiagnostic.Error StaticImpOnlyClassesAndInterfaces = new JCDiagnostic.Error("compiler", "static.imp.only.classes.and.interfaces", new Object[0]);
        public static final JCDiagnostic.Error StringConstReq = new JCDiagnostic.Error("compiler", "string.const.req", new Object[0]);
        public static final JCDiagnostic.Error ThisAsIdentifier = new JCDiagnostic.Error("compiler", "this.as.identifier", new Object[0]);
        public static final JCDiagnostic.Error ThrowsNotAllowedInIntfAnnotation = new JCDiagnostic.Error("compiler", "throws.not.allowed.in.intf.annotation", new Object[0]);
        public static final JCDiagnostic.Error TooManyModules = new JCDiagnostic.Error("compiler", "too.many.modules", new Object[0]);
        public static final JCDiagnostic.Error TryWithResourcesExprNeedsVar = new JCDiagnostic.Error("compiler", "try.with.resources.expr.needs.var", new Object[0]);
        public static final JCDiagnostic.Error TryWithoutCatchFinallyOrResourceDecls = new JCDiagnostic.Error("compiler", "try.without.catch.finally.or.resource.decls", new Object[0]);
        public static final JCDiagnostic.Error TryWithoutCatchOrFinally = new JCDiagnostic.Error("compiler", "try.without.catch.or.finally", new Object[0]);
        public static final JCDiagnostic.Error TypeVarCantBeDeref = new JCDiagnostic.Error("compiler", "type.var.cant.be.deref", new Object[0]);
        public static final JCDiagnostic.Error TypeVarMayNotBeFollowedByOtherBounds = new JCDiagnostic.Error("compiler", "type.var.may.not.be.followed.by.other.bounds", new Object[0]);
        public static final JCDiagnostic.Error TypeVarMoreThanOnce = new JCDiagnostic.Error("compiler", "type.var.more.than.once", new Object[0]);
        public static final JCDiagnostic.Error TypeVarMoreThanOnceInResult = new JCDiagnostic.Error("compiler", "type.var.more.than.once.in.result", new Object[0]);
        public static final JCDiagnostic.Error UnclosedCharLit = new JCDiagnostic.Error("compiler", "unclosed.char.lit", new Object[0]);
        public static final JCDiagnostic.Error UnclosedComment = new JCDiagnostic.Error("compiler", "unclosed.comment", new Object[0]);
        public static final JCDiagnostic.Error UnclosedStrLit = new JCDiagnostic.Error("compiler", "unclosed.str.lit", new Object[0]);
        public static final JCDiagnostic.Error UnderscoreAsIdentifier = new JCDiagnostic.Error("compiler", "underscore.as.identifier", new Object[0]);
        public static final JCDiagnostic.Error UnderscoreAsIdentifierInLambda = new JCDiagnostic.Error("compiler", "underscore.as.identifier.in.lambda", new Object[0]);
        public static final JCDiagnostic.Error UnexpectedLambda = new JCDiagnostic.Error("compiler", "unexpected.lambda", new Object[0]);
        public static final JCDiagnostic.Error UnexpectedMref = new JCDiagnostic.Error("compiler", "unexpected.mref", new Object[0]);
        public static final JCDiagnostic.Error UnexpectedType = new JCDiagnostic.Error("compiler", "unexpected.type", new Object[0]);
        public static final JCDiagnostic.Error UnnamedPkgNotAllowedNamedModules = new JCDiagnostic.Error("compiler", "unnamed.pkg.not.allowed.named.modules", new Object[0]);
        public static final JCDiagnostic.Error UnreachableStmt = new JCDiagnostic.Error("compiler", "unreachable.stmt", new Object[0]);
        public static final JCDiagnostic.Error UnsupportedCrossFpLit = new JCDiagnostic.Error("compiler", "unsupported.cross.fp.lit", new Object[0]);
        public static final JCDiagnostic.Error VarargsAndOldArraySyntax = new JCDiagnostic.Error("compiler", "varargs.and.old.array.syntax", new Object[0]);
        public static final JCDiagnostic.Error VarargsAndReceiver = new JCDiagnostic.Error("compiler", "varargs.and.receiver ", new Object[0]);
        public static final JCDiagnostic.Error VarargsMustBeLast = new JCDiagnostic.Error("compiler", "varargs.must.be.last ", new Object[0]);
        public static final JCDiagnostic.Error VariableNotAllowed = new JCDiagnostic.Error("compiler", "variable.not.allowed", new Object[0]);
        public static final JCDiagnostic.Error VoidNotAllowedHere = new JCDiagnostic.Error("compiler", "void.not.allowed.here", new Object[0]);
        public static final JCDiagnostic.Error WarningsAndWerror = new JCDiagnostic.Error("compiler", "warnings.and.werror", new Object[0]);

        public static JCDiagnostic.Error AbstractCantBeAccessedDirectly(Kinds.Kind kind, Symbol symbol, Symbol symbol2) {
            return new JCDiagnostic.Error("compiler", "abstract.cant.be.accessed.directly", kind, symbol, symbol2);
        }

        public static JCDiagnostic.Error AbstractCantBeInstantiated(Symbol symbol) {
            return new JCDiagnostic.Error("compiler", "abstract.cant.be.instantiated", symbol);
        }

        public static JCDiagnostic.Error AddExportsWithRelease(Symbol symbol) {
            return new JCDiagnostic.Error("compiler", "add.exports.with.release", symbol);
        }

        public static JCDiagnostic.Error AddReadsWithRelease(Symbol symbol) {
            return new JCDiagnostic.Error("compiler", "add.reads.with.release", symbol);
        }

        public static JCDiagnostic.Error AlreadyDefined(Kinds.Kind kind, Symbol symbol, Kinds.Kind kind2, Symbol symbol2) {
            return new JCDiagnostic.Error("compiler", "already.defined", kind, symbol, kind2, symbol2);
        }

        public static JCDiagnostic.Error AlreadyDefinedInClinit(Kinds.Kind kind, Symbol symbol, Kinds.Kind kind2, Kinds.Kind kind3, Symbol symbol2) {
            return new JCDiagnostic.Error("compiler", "already.defined.in.clinit", kind, symbol, kind2, kind3, symbol2);
        }

        public static JCDiagnostic.Error AlreadyDefinedSingleImport(String str) {
            return new JCDiagnostic.Error("compiler", "already.defined.single.import", str);
        }

        public static JCDiagnostic.Error AlreadyDefinedStaticSingleImport(String str) {
            return new JCDiagnostic.Error("compiler", "already.defined.static.single.import", str);
        }

        public static JCDiagnostic.Error AnnotationMissingDefaultValue(Type type, List<? extends Name> list) {
            return new JCDiagnostic.Error("compiler", "annotation.missing.default.value", type, list);
        }

        public static JCDiagnostic.Error AnnotationMissingDefaultValue1(Type type, List<? extends Name> list) {
            return new JCDiagnostic.Error("compiler", "annotation.missing.default.value.1", type, list);
        }

        public static JCDiagnostic.Error AnnotationNotValidForType(Type type) {
            return new JCDiagnostic.Error("compiler", "annotation.not.valid.for.type", type);
        }

        public static JCDiagnostic.Error AnnotationTypeNotApplicableToType(Type type) {
            return new JCDiagnostic.Error("compiler", "annotation.type.not.applicable.to.type", type);
        }

        public static JCDiagnostic.Error AnnotationsAfterTypeParamsNotSupportedInSource(String str) {
            return new JCDiagnostic.Error("compiler", "annotations.after.type.params.not.supported.in.source", str);
        }

        public static JCDiagnostic.Error AnonymousDiamondMethodDoesNotOverrideSuperclass(JCDiagnostic jCDiagnostic) {
            return new JCDiagnostic.Error("compiler", "anonymous.diamond.method.does.not.override.superclass", jCDiagnostic);
        }

        public static JCDiagnostic.Error ArrayAndVarargs(Symbol symbol, Symbol symbol2, Symbol symbol3) {
            return new JCDiagnostic.Error("compiler", "array.and.varargs", symbol, symbol2, symbol3);
        }

        public static JCDiagnostic.Error ArrayReqButFound(Type type) {
            return new JCDiagnostic.Error("compiler", "array.req.but.found", type);
        }

        public static JCDiagnostic.Error BadFunctionalIntfAnno1(JCDiagnostic jCDiagnostic) {
            return new JCDiagnostic.Error("compiler", "bad.functional.intf.anno.1", jCDiagnostic);
        }

        public static JCDiagnostic.Error BadInitializer(String str) {
            return new JCDiagnostic.Error("compiler", "bad.initializer", str);
        }

        public static JCDiagnostic.Error BadNameForOption(Option option, String str) {
            return new JCDiagnostic.Error("compiler", "bad.name.for.option", option, str);
        }

        public static JCDiagnostic.Error CallMustBeFirstStmtInCtor(Name name) {
            return new JCDiagnostic.Error("compiler", "call.must.be.first.stmt.in.ctor", name);
        }

        public static JCDiagnostic.Error CallToSuperNotAllowedInEnumCtor(Void r32) {
            return new JCDiagnostic.Error("compiler", "call.to.super.not.allowed.in.enum.ctor", r32);
        }

        public static JCDiagnostic.Error CantAccess(Symbol symbol, JCDiagnostic jCDiagnostic) {
            return new JCDiagnostic.Error("compiler", "cant.access", symbol, jCDiagnostic);
        }

        public static JCDiagnostic.Error CantApplyDiamond(JCDiagnostic jCDiagnostic, Void r32) {
            return new JCDiagnostic.Error("compiler", "cant.apply.diamond", jCDiagnostic, r32);
        }

        public static JCDiagnostic.Error CantApplyDiamond1(JCDiagnostic jCDiagnostic, JCDiagnostic jCDiagnostic2) {
            return new JCDiagnostic.Error("compiler", "cant.apply.diamond.1", jCDiagnostic, jCDiagnostic2);
        }

        public static JCDiagnostic.Error CantApplySymbol(Kinds.Kind kind, Name name, List<? extends Type> list, List<? extends Type> list2, Kinds.Kind kind2, Type type, JCDiagnostic jCDiagnostic) {
            return new JCDiagnostic.Error("compiler", "cant.apply.symbol", kind, name, list, list2, kind2, type, jCDiagnostic);
        }

        public static JCDiagnostic.Error CantApplySymbols(Kinds.Kind kind, Name name, List<? extends Type> list) {
            return new JCDiagnostic.Error("compiler", "cant.apply.symbols", kind, name, list);
        }

        public static JCDiagnostic.Error CantAssignValToFinalVar(Symbol symbol) {
            return new JCDiagnostic.Error("compiler", "cant.assign.val.to.final.var", symbol);
        }

        public static JCDiagnostic.Error CantDeref(Type type) {
            return new JCDiagnostic.Error("compiler", "cant.deref", type);
        }

        public static JCDiagnostic.Error CantInheritDiffArg(Symbol symbol, String str, String str2) {
            return new JCDiagnostic.Error("compiler", "cant.inherit.diff.arg", symbol, str, str2);
        }

        public static JCDiagnostic.Error CantInheritFromFinal(Symbol symbol) {
            return new JCDiagnostic.Error("compiler", "cant.inherit.from.final", symbol);
        }

        public static JCDiagnostic.Error CantRefBeforeCtorCalled(Symbol symbol) {
            return new JCDiagnostic.Error("compiler", "cant.ref.before.ctor.called", symbol);
        }

        public static JCDiagnostic.Error CantRefNonEffectivelyFinalVar(Symbol symbol, JCDiagnostic jCDiagnostic) {
            return new JCDiagnostic.Error("compiler", "cant.ref.non.effectively.final.var", symbol, jCDiagnostic);
        }

        public static JCDiagnostic.Error CantResolve(Kinds.Kind kind, Name name, Void r42, Void r52) {
            return new JCDiagnostic.Error("compiler", "cant.resolve", kind, name, r42, r52);
        }

        public static JCDiagnostic.Error CantResolveArgs(Kinds.Kind kind, Name name, Void r42, List<? extends Type> list) {
            return new JCDiagnostic.Error("compiler", "cant.resolve.args", kind, name, r42, list);
        }

        public static JCDiagnostic.Error CantResolveArgsParams(Kinds.Kind kind, Name name, List<? extends Type> list, List<? extends Type> list2) {
            return new JCDiagnostic.Error("compiler", "cant.resolve.args.params", kind, name, list, list2);
        }

        public static JCDiagnostic.Error CantResolveLocation(Kinds.Kind kind, Name name, Void r42, Void r52, JCDiagnostic jCDiagnostic) {
            return new JCDiagnostic.Error("compiler", "cant.resolve.location", kind, name, r42, r52, jCDiagnostic);
        }

        public static JCDiagnostic.Error CantResolveLocationArgs(Kinds.Kind kind, Name name, Void r42, List<? extends Type> list, JCDiagnostic jCDiagnostic) {
            return new JCDiagnostic.Error("compiler", "cant.resolve.location.args", kind, name, r42, list, jCDiagnostic);
        }

        public static JCDiagnostic.Error CantResolveLocationArgsParams(Kinds.Kind kind, Name name, List<? extends Type> list, List list2, JCDiagnostic jCDiagnostic) {
            return new JCDiagnostic.Error("compiler", "cant.resolve.location.args.params", kind, name, list, list2, jCDiagnostic);
        }

        public static JCDiagnostic.Error CantTypeAnnotateScoping(List<? extends Symbol> list) {
            return new JCDiagnostic.Error("compiler", "cant.type.annotate.scoping", list);
        }

        public static JCDiagnostic.Error CantTypeAnnotateScoping1(Symbol symbol) {
            return new JCDiagnostic.Error("compiler", "cant.type.annotate.scoping.1", symbol);
        }

        public static JCDiagnostic.Error ClashWithPkgOfSameName(Kinds.Kind kind, Symbol symbol) {
            return new JCDiagnostic.Error("compiler", "clash.with.pkg.of.same.name", kind, symbol);
        }

        public static JCDiagnostic.Error ClassCantWrite(Symbol symbol, String str) {
            return new JCDiagnostic.Error("compiler", "class.cant.write", symbol, str);
        }

        public static JCDiagnostic.Error ClassPublicShouldBeInFile(Kinds.KindName kindName, Name name) {
            return new JCDiagnostic.Error("compiler", "class.public.should.be.in.file", kindName, name);
        }

        public static JCDiagnostic.Error ConcreteInheritanceConflict(Symbol symbol, Type type, Symbol symbol2, Type type2, Void r62) {
            return new JCDiagnostic.Error("compiler", "concrete.inheritance.conflict", symbol, type, symbol2, type2, r62);
        }

        public static JCDiagnostic.Error ConflictingExports(Symbol symbol) {
            return new JCDiagnostic.Error("compiler", "conflicting.exports", symbol);
        }

        public static JCDiagnostic.Error ConflictingExportsToModule(Symbol symbol) {
            return new JCDiagnostic.Error("compiler", "conflicting.exports.to.module", symbol);
        }

        public static JCDiagnostic.Error ConflictingOpens(Symbol symbol) {
            return new JCDiagnostic.Error("compiler", "conflicting.opens", symbol);
        }

        public static JCDiagnostic.Error ConflictingOpensToModule(Symbol symbol) {
            return new JCDiagnostic.Error("compiler", "conflicting.opens.to.module", symbol);
        }

        public static JCDiagnostic.Error CyclicAnnotationElement(Symbol symbol) {
            return new JCDiagnostic.Error("compiler", "cyclic.annotation.element", symbol);
        }

        public static JCDiagnostic.Error CyclicInheritance(Symbol symbol) {
            return new JCDiagnostic.Error("compiler", "cyclic.inheritance", symbol);
        }

        public static JCDiagnostic.Error CyclicRequires(Symbol symbol) {
            return new JCDiagnostic.Error("compiler", "cyclic.requires", symbol);
        }

        public static JCDiagnostic.Error DefaultMethodsNotSupportedInSource(String str) {
            return new JCDiagnostic.Error("compiler", "default.methods.not.supported.in.source", str);
        }

        public static JCDiagnostic.Error DefaultOverridesObjectMember(Name name, Kinds.KindName kindName, Symbol symbol) {
            return new JCDiagnostic.Error("compiler", "default.overrides.object.member", name, kindName, symbol);
        }

        public static JCDiagnostic.Error DiamondNotSupportedInSource(String str) {
            return new JCDiagnostic.Error("compiler", "diamond.not.supported.in.source", str);
        }

        public static JCDiagnostic.Error DoesNotOverrideAbstract(Symbol symbol, Symbol symbol2, Symbol symbol3) {
            return new JCDiagnostic.Error("compiler", "does.not.override.abstract", symbol, symbol2, symbol3);
        }

        public static JCDiagnostic.Error DoesntExist(Symbol symbol) {
            return new JCDiagnostic.Error("compiler", "doesnt.exist", symbol);
        }

        public static JCDiagnostic.Error DuplicateAnnotationInvalidRepeated(Type type) {
            return new JCDiagnostic.Error("compiler", "duplicate.annotation.invalid.repeated", type);
        }

        public static JCDiagnostic.Error DuplicateAnnotationMemberValue(Name name, Type type) {
            return new JCDiagnostic.Error("compiler", "duplicate.annotation.member.value", name, type);
        }

        public static JCDiagnostic.Error DuplicateAnnotationMissingContainer(Name name, Void r32) {
            return new JCDiagnostic.Error("compiler", "duplicate.annotation.missing.container", name, r32);
        }

        public static JCDiagnostic.Error DuplicateClass(Name name) {
            return new JCDiagnostic.Error("compiler", "duplicate.class", name);
        }

        public static JCDiagnostic.Error DuplicateModule(Symbol symbol) {
            return new JCDiagnostic.Error("compiler", "duplicate.module", symbol);
        }

        public static JCDiagnostic.Error DuplicateModuleOnPath(JCDiagnostic.Fragment fragment, Name name) {
            return new JCDiagnostic.Error("compiler", "duplicate.module.on.path", fragment, name);
        }

        public static JCDiagnostic.Error DuplicateProvides(Symbol symbol, Symbol symbol2) {
            return new JCDiagnostic.Error("compiler", "duplicate.provides", symbol, symbol2);
        }

        public static JCDiagnostic.Error DuplicateRequires(Symbol symbol) {
            return new JCDiagnostic.Error("compiler", "duplicate.requires", symbol);
        }

        public static JCDiagnostic.Error DuplicateUses(Symbol symbol) {
            return new JCDiagnostic.Error("compiler", "duplicate.uses", symbol);
        }

        public static JCDiagnostic.Error EnclClassRequired(Symbol symbol) {
            return new JCDiagnostic.Error("compiler", "encl.class.required", symbol);
        }

        public static JCDiagnostic.Error ErrorReadingFile(File file, String str) {
            return new JCDiagnostic.Error("compiler", "error.reading.file", file, str);
        }

        public static JCDiagnostic.Error ExceptAlreadyCaught(Type type) {
            return new JCDiagnostic.Error("compiler", "except.already.caught", type);
        }

        public static JCDiagnostic.Error ExceptNeverThrownInTry(Type type) {
            return new JCDiagnostic.Error("compiler", "except.never.thrown.in.try", type);
        }

        public static JCDiagnostic.Error Expected(Tokens.TokenKind tokenKind) {
            return new JCDiagnostic.Error("compiler", "expected", tokenKind);
        }

        public static JCDiagnostic.Error Expected2(Tokens.TokenKind tokenKind, Tokens.TokenKind tokenKind2) {
            return new JCDiagnostic.Error("compiler", "expected2", tokenKind, tokenKind2);
        }

        public static JCDiagnostic.Error Expected3(Tokens.TokenKind tokenKind, Tokens.TokenKind tokenKind2, Tokens.TokenKind tokenKind3) {
            return new JCDiagnostic.Error("compiler", "expected3", tokenKind, tokenKind2, tokenKind3);
        }

        public static JCDiagnostic.Error FilePatchedAndMsp(Name name, Name name2) {
            return new JCDiagnostic.Error("compiler", "file.patched.and.msp", name, name2);
        }

        public static JCDiagnostic.Error FinalParameterMayNotBeAssigned(Symbol symbol) {
            return new JCDiagnostic.Error("compiler", "final.parameter.may.not.be.assigned", symbol);
        }

        public static JCDiagnostic.Error ForeachNotApplicableToType(Type type, JCDiagnostic jCDiagnostic) {
            return new JCDiagnostic.Error("compiler", "foreach.not.applicable.to.type", type, jCDiagnostic);
        }

        public static JCDiagnostic.Error IclsCantHaveStaticDecl(Symbol symbol) {
            return new JCDiagnostic.Error("compiler", "icls.cant.have.static.decl", symbol);
        }

        public static JCDiagnostic.Error IllegalArgumentForOption(String str, String str2) {
            return new JCDiagnostic.Error("compiler", "illegal.argument.for.option", str, str2);
        }

        public static JCDiagnostic.Error IllegalChar(String str) {
            return new JCDiagnostic.Error("compiler", "illegal.char", str);
        }

        public static JCDiagnostic.Error IllegalCharForEncoding(String str, String str2) {
            return new JCDiagnostic.Error("compiler", "illegal.char.for.encoding", str, str2);
        }

        public static JCDiagnostic.Error IllegalCombinationOfModifiers(Set<? extends Modifier> set, Set<? extends Modifier> set2) {
            return new JCDiagnostic.Error("compiler", "illegal.combination.of.modifiers", set, set2);
        }

        public static JCDiagnostic.Error IllegalDefaultSuperCall(Type type, JCDiagnostic jCDiagnostic) {
            return new JCDiagnostic.Error("compiler", "illegal.default.super.call", type, jCDiagnostic);
        }

        public static JCDiagnostic.Error IllegalInitializerForType(Type type) {
            return new JCDiagnostic.Error("compiler", "illegal.initializer.for.type", type);
        }

        public static JCDiagnostic.Error IllegalQualNotIcls(Symbol symbol) {
            return new JCDiagnostic.Error("compiler", "illegal.qual.not.icls", symbol);
        }

        public static JCDiagnostic.Error IllegalStaticIntfMethCall(Type type) {
            return new JCDiagnostic.Error("compiler", "illegal.static.intf.meth.call", type);
        }

        public static JCDiagnostic.Error ImportRequiresCanonical(Symbol symbol) {
            return new JCDiagnostic.Error("compiler", "import.requires.canonical", symbol);
        }

        public static JCDiagnostic.Error IncomparableTypes(Type type, Type type2) {
            return new JCDiagnostic.Error("compiler", "incomparable.types", type, type2);
        }

        public static JCDiagnostic.Error IncompatibleThrownTypesInMref(List<? extends Type> list) {
            return new JCDiagnostic.Error("compiler", "incompatible.thrown.types.in.mref", list);
        }

        public static JCDiagnostic.Error IncorrectConstructorReceiverName(Type type, Type type2) {
            return new JCDiagnostic.Error("compiler", "incorrect.constructor.receiver.name", type, type2);
        }

        public static JCDiagnostic.Error IncorrectConstructorReceiverType(Type type, Type type2) {
            return new JCDiagnostic.Error("compiler", "incorrect.constructor.receiver.type", type, type2);
        }

        public static JCDiagnostic.Error IncorrectReceiverName(Type type, Type type2) {
            return new JCDiagnostic.Error("compiler", "incorrect.receiver.name", type, type2);
        }

        public static JCDiagnostic.Error IncorrectReceiverType(Type type, Type type2) {
            return new JCDiagnostic.Error("compiler", "incorrect.receiver.type", type, type2);
        }

        public static JCDiagnostic.Error IntNumberTooLarge(int i10) {
            return new JCDiagnostic.Error("compiler", "int.number.too.large", Integer.valueOf(i10));
        }

        public static JCDiagnostic.Error IntersectionTypesInCastNotSupportedInSource(String str) {
            return new JCDiagnostic.Error("compiler", "intersection.types.in.cast.not.supported.in.source", str);
        }

        public static JCDiagnostic.Error IntfAnnotationCantHaveTypeParams(Symbol symbol) {
            return new JCDiagnostic.Error("compiler", "intf.annotation.cant.have.type.params", symbol);
        }

        public static JCDiagnostic.Error IntfAnnotationMemberClash(Symbol symbol, Type type) {
            return new JCDiagnostic.Error("compiler", "intf.annotation.member.clash", symbol, type);
        }

        public static JCDiagnostic.Error InvalidAnnotationMemberType(Symbol symbol) {
            return new JCDiagnostic.Error("compiler", "invalid.annotation.member.type", symbol);
        }

        public static JCDiagnostic.Error InvalidModuleSpecifier(String str) {
            return new JCDiagnostic.Error("compiler", "invalid.module.specifier", str);
        }

        public static JCDiagnostic.Error InvalidMref(Kinds.Kind kind, JCDiagnostic jCDiagnostic) {
            return new JCDiagnostic.Error("compiler", "invalid.mref", kind, jCDiagnostic);
        }

        public static JCDiagnostic.Error InvalidRepeatableAnnotation(Type type, Void r32) {
            return new JCDiagnostic.Error("compiler", "invalid.repeatable.annotation", type, r32);
        }

        public static JCDiagnostic.Error InvalidRepeatableAnnotationElemNondefault(Symbol symbol, Symbol symbol2) {
            return new JCDiagnostic.Error("compiler", "invalid.repeatable.annotation.elem.nondefault", symbol, symbol2);
        }

        public static JCDiagnostic.Error InvalidRepeatableAnnotationIncompatibleTarget(Symbol symbol, Symbol symbol2) {
            return new JCDiagnostic.Error("compiler", "invalid.repeatable.annotation.incompatible.target", symbol, symbol2);
        }

        public static JCDiagnostic.Error InvalidRepeatableAnnotationInvalidValue(Type type) {
            return new JCDiagnostic.Error("compiler", "invalid.repeatable.annotation.invalid.value", type);
        }

        public static JCDiagnostic.Error InvalidRepeatableAnnotationMultipleValues(Type type, int i10) {
            return new JCDiagnostic.Error("compiler", "invalid.repeatable.annotation.multiple.values", type, Integer.valueOf(i10));
        }

        public static JCDiagnostic.Error InvalidRepeatableAnnotationNoValue(Symbol symbol) {
            return new JCDiagnostic.Error("compiler", "invalid.repeatable.annotation.no.value", symbol);
        }

        public static JCDiagnostic.Error InvalidRepeatableAnnotationNotApplicable(Type type, Symbol symbol) {
            return new JCDiagnostic.Error("compiler", "invalid.repeatable.annotation.not.applicable", type, symbol);
        }

        public static JCDiagnostic.Error InvalidRepeatableAnnotationNotApplicableInContext(Type type) {
            return new JCDiagnostic.Error("compiler", "invalid.repeatable.annotation.not.applicable.in.context", type);
        }

        public static JCDiagnostic.Error InvalidRepeatableAnnotationNotDocumented(Symbol symbol, Symbol symbol2) {
            return new JCDiagnostic.Error("compiler", "invalid.repeatable.annotation.not.documented", symbol, symbol2);
        }

        public static JCDiagnostic.Error InvalidRepeatableAnnotationNotInherited(Symbol symbol, Symbol symbol2) {
            return new JCDiagnostic.Error("compiler", "invalid.repeatable.annotation.not.inherited", symbol, symbol2);
        }

        public static JCDiagnostic.Error InvalidRepeatableAnnotationRepeatedAndContainerPresent(Symbol symbol) {
            return new JCDiagnostic.Error("compiler", "invalid.repeatable.annotation.repeated.and.container.present", symbol);
        }

        public static JCDiagnostic.Error InvalidRepeatableAnnotationRetention(Symbol symbol, Void r32, Symbol symbol2, Void r52) {
            return new JCDiagnostic.Error("compiler", "invalid.repeatable.annotation.retention", symbol, r32, symbol2, r52);
        }

        public static JCDiagnostic.Error InvalidRepeatableAnnotationValueReturn(Symbol symbol, Void r32, Type type) {
            return new JCDiagnostic.Error("compiler", "invalid.repeatable.annotation.value.return", symbol, r32, type);
        }

        public static JCDiagnostic.Error LabelAlreadyInUse(Name name) {
            return new JCDiagnostic.Error("compiler", "label.already.in.use", name);
        }

        public static JCDiagnostic.Error LambdaNotSupportedInSource(String str) {
            return new JCDiagnostic.Error("compiler", "lambda.not.supported.in.source", str);
        }

        public static JCDiagnostic.Error LocalVarAccessedFromIclsNeedsFinal(Symbol symbol) {
            return new JCDiagnostic.Error("compiler", "local.var.accessed.from.icls.needs.final", symbol);
        }

        public static JCDiagnostic.Error LocnBadModuleInfo(Path path) {
            return new JCDiagnostic.Error("compiler", "locn.bad.module-info", path);
        }

        public static JCDiagnostic.Error LocnCantGetModuleNameForJar(Path path) {
            return new JCDiagnostic.Error("compiler", "locn.cant.get.module.name.for.jar", path);
        }

        public static JCDiagnostic.Error LocnCantReadDirectory(Path path) {
            return new JCDiagnostic.Error("compiler", "locn.cant.read.directory", path);
        }

        public static JCDiagnostic.Error LocnCantReadFile(Path path) {
            return new JCDiagnostic.Error("compiler", "locn.cant.read.file", path);
        }

        public static JCDiagnostic.Error LocnInvalidArgForXpatch(String str) {
            return new JCDiagnostic.Error("compiler", "locn.invalid.arg.for.xpatch", str);
        }

        public static JCDiagnostic.Error LocnModuleInfoNotAllowedOnPatchPath(JavaFileObject javaFileObject) {
            return new JCDiagnostic.Error("compiler", "locn.module-info.not.allowed.on.patch.path", javaFileObject);
        }

        public static JCDiagnostic.Error MethodInvokedWithIncorrectNumberArguments(int i10, int i11) {
            return new JCDiagnostic.Error("compiler", "method.invoked.with.incorrect.number.arguments", Integer.valueOf(i10), Integer.valueOf(i11));
        }

        public static JCDiagnostic.Error MethodReferencesNotSupportedInSource(String str) {
            return new JCDiagnostic.Error("compiler", "method.references.not.supported.in.source", str);
        }

        public static JCDiagnostic.Error ModNotAllowedHere(Set<? extends Modifier> set) {
            return new JCDiagnostic.Error("compiler", "mod.not.allowed.here", set);
        }

        public static JCDiagnostic.Error ModuleNameMismatch(Name name, Name name2) {
            return new JCDiagnostic.Error("compiler", "module.name.mismatch", name, name2);
        }

        public static JCDiagnostic.Error ModuleNonZeroOpens(Name name) {
            return new JCDiagnostic.Error("compiler", "module.non.zero.opens", name);
        }

        public static JCDiagnostic.Error ModuleNotFound(Symbol symbol) {
            return new JCDiagnostic.Error("compiler", "module.not.found", symbol);
        }

        public static JCDiagnostic.Error ModuleNotFoundInModuleSourcePath(String str) {
            return new JCDiagnostic.Error("compiler", "module.not.found.in.module.source.path", str);
        }

        public static JCDiagnostic.Error ModulesNotSupportedInSource(String str) {
            return new JCDiagnostic.Error("compiler", "modules.not.supported.in.source", str);
        }

        public static JCDiagnostic.Error MultiModuleOutdirCannotBeExplodedModule(Path path) {
            return new JCDiagnostic.Error("compiler", "multi-module.outdir.cannot.be.exploded.module", path);
        }

        public static JCDiagnostic.Error MulticatchNotSupportedInSource(String str) {
            return new JCDiagnostic.Error("compiler", "multicatch.not.supported.in.source", str);
        }

        public static JCDiagnostic.Error MulticatchParameterMayNotBeAssigned(Symbol symbol) {
            return new JCDiagnostic.Error("compiler", "multicatch.parameter.may.not.be.assigned", symbol);
        }

        public static JCDiagnostic.Error MulticatchTypesMustBeDisjoint(Type type, Type type2) {
            return new JCDiagnostic.Error("compiler", "multicatch.types.must.be.disjoint", type, type2);
        }

        public static JCDiagnostic.Error NameClashSameErasure(Symbol symbol, Symbol symbol2) {
            return new JCDiagnostic.Error("compiler", "name.clash.same.erasure", symbol, symbol2);
        }

        public static JCDiagnostic.Error NameClashSameErasureNoHide(Symbol symbol, Symbol symbol2, Symbol symbol3, Symbol symbol4) {
            return new JCDiagnostic.Error("compiler", "name.clash.same.erasure.no.hide", symbol, symbol2, symbol3, symbol4);
        }

        public static JCDiagnostic.Error NameClashSameErasureNoOverride(Symbol symbol, Symbol symbol2, Symbol symbol3, Symbol symbol4, Void r62, Void r72) {
            return new JCDiagnostic.Error("compiler", "name.clash.same.erasure.no.override", symbol, symbol2, symbol3, symbol4, r62, r72);
        }

        public static JCDiagnostic.Error NameClashSameErasureNoOverride1(Symbol symbol, Symbol symbol2, Symbol symbol3, Symbol symbol4, Symbol symbol5, Symbol symbol6) {
            return new JCDiagnostic.Error("compiler", "name.clash.same.erasure.no.override.1", symbol, symbol2, symbol3, symbol4, symbol5, symbol6);
        }

        public static JCDiagnostic.Error NeitherConditionalSubtype(Type type, Type type2) {
            return new JCDiagnostic.Error("compiler", "neither.conditional.subtype", type, type2);
        }

        public static JCDiagnostic.Error NoSuperclass(Type type) {
            return new JCDiagnostic.Error("compiler", "no.superclass", type);
        }

        public static JCDiagnostic.Error NoZipfsForArchive(Path path) {
            return new JCDiagnostic.Error("compiler", "no.zipfs.for.archive", path);
        }

        public static JCDiagnostic.Error NonStaticCantBeRef(Kinds.Kind kind, Symbol symbol) {
            return new JCDiagnostic.Error("compiler", "non-static.cant.be.ref", kind, symbol);
        }

        public static JCDiagnostic.Error NotDefAccessClassIntfCantAccess(Symbol symbol, Symbol symbol2) {
            return new JCDiagnostic.Error("compiler", "not.def.access.class.intf.cant.access", symbol, symbol2);
        }

        public static JCDiagnostic.Error NotDefAccessClassIntfCantAccessReason(Symbol symbol, Symbol symbol2, Symbol symbol3, JCDiagnostic jCDiagnostic) {
            return new JCDiagnostic.Error("compiler", "not.def.access.class.intf.cant.access.reason", symbol, symbol2, symbol3, jCDiagnostic);
        }

        public static JCDiagnostic.Error NotDefAccessPackageCantAccess(Symbol symbol, Symbol symbol2, JCDiagnostic jCDiagnostic) {
            return new JCDiagnostic.Error("compiler", "not.def.access.package.cant.access", symbol, symbol2, jCDiagnostic);
        }

        public static JCDiagnostic.Error NotDefPublic(Symbol symbol, Symbol symbol2) {
            return new JCDiagnostic.Error("compiler", "not.def.public", symbol, symbol2);
        }

        public static JCDiagnostic.Error NotDefPublicCantAccess(Symbol symbol, Symbol symbol2) {
            return new JCDiagnostic.Error("compiler", "not.def.public.cant.access", symbol, symbol2);
        }

        public static JCDiagnostic.Error NotEnclClass(Symbol symbol) {
            return new JCDiagnostic.Error("compiler", "not.encl.class", symbol);
        }

        public static JCDiagnostic.Error NotInProfile(Symbol symbol, String str) {
            return new JCDiagnostic.Error("compiler", "not.in.profile", symbol, str);
        }

        public static JCDiagnostic.Error NotLoopLabel(Name name) {
            return new JCDiagnostic.Error("compiler", "not.loop.label", name);
        }

        public static JCDiagnostic.Error NotWithinBounds(Type type, Type type2) {
            return new JCDiagnostic.Error("compiler", "not.within.bounds", type, type2);
        }

        public static JCDiagnostic.Error OperatorCantBeApplied(Name name, Type type) {
            return new JCDiagnostic.Error("compiler", "operator.cant.be.applied", name, type);
        }

        public static JCDiagnostic.Error OperatorCantBeApplied1(Name name, Type type, Type type2) {
            return new JCDiagnostic.Error("compiler", "operator.cant.be.applied.1", name, type, type2);
        }

        public static JCDiagnostic.Error OptionRemovedSource(String str, String str2) {
            return new JCDiagnostic.Error("compiler", "option.removed.source", str, str2);
        }

        public static JCDiagnostic.Error OptionRemovedTarget(String str, String str2) {
            return new JCDiagnostic.Error("compiler", "option.removed.target", str, str2);
        }

        public static JCDiagnostic.Error Orphaned(Tokens.TokenKind tokenKind) {
            return new JCDiagnostic.Error("compiler", "orphaned", tokenKind);
        }

        public static JCDiagnostic.Error OverrideIncompatibleRet(JCDiagnostic jCDiagnostic, Type type, Type type2) {
            return new JCDiagnostic.Error("compiler", "override.incompatible.ret", jCDiagnostic, type, type2);
        }

        public static JCDiagnostic.Error OverrideMeth(JCDiagnostic jCDiagnostic, Set<? extends Modifier> set) {
            return new JCDiagnostic.Error("compiler", "override.meth", jCDiagnostic, set);
        }

        public static JCDiagnostic.Error OverrideMethDoesntThrow(JCDiagnostic jCDiagnostic, Type type) {
            return new JCDiagnostic.Error("compiler", "override.meth.doesnt.throw", jCDiagnostic, type);
        }

        public static JCDiagnostic.Error OverrideStatic(JCDiagnostic jCDiagnostic) {
            return new JCDiagnostic.Error("compiler", "override.static", jCDiagnostic);
        }

        public static JCDiagnostic.Error OverrideWeakerAccess(JCDiagnostic jCDiagnostic, Set<? extends Modifier> set) {
            return new JCDiagnostic.Error("compiler", "override.weaker.access", jCDiagnostic, set);
        }

        public static JCDiagnostic.Error PackageClashFromRequires(Symbol symbol, Name name, Symbol symbol2, Symbol symbol3) {
            return new JCDiagnostic.Error("compiler", "package.clash.from.requires", symbol, name, symbol2, symbol3);
        }

        public static JCDiagnostic.Error PackageClashFromRequiresInUnnamed(Name name, Symbol symbol, Symbol symbol2) {
            return new JCDiagnostic.Error("compiler", "package.clash.from.requires.in.unnamed", name, symbol, symbol2);
        }

        public static JCDiagnostic.Error PackageEmptyOrNotFound(Symbol symbol) {
            return new JCDiagnostic.Error("compiler", "package.empty.or.not.found", symbol);
        }

        public static JCDiagnostic.Error PackageInOtherModule(Symbol symbol) {
            return new JCDiagnostic.Error("compiler", "package.in.other.module", symbol);
        }

        public static JCDiagnostic.Error PackageNotVisible(Symbol symbol, JCDiagnostic jCDiagnostic) {
            return new JCDiagnostic.Error("compiler", "package.not.visible", symbol, jCDiagnostic);
        }

        public static JCDiagnostic.Error PatchModuleWithRelease(Symbol symbol) {
            return new JCDiagnostic.Error("compiler", "patch.module.with.release", symbol);
        }

        public static JCDiagnostic.Error PkgClashesWithClassOfSameName(Symbol symbol) {
            return new JCDiagnostic.Error("compiler", "pkg.clashes.with.class.of.same.name", symbol);
        }

        public static JCDiagnostic.Error PluginNotFound(String str) {
            return new JCDiagnostic.Error("compiler", "plugin.not.found", str);
        }

        public static JCDiagnostic.Error PrivateIntfMethodsNotSupportedInSource(String str) {
            return new JCDiagnostic.Error("compiler", "private.intf.methods.not.supported.in.source", str);
        }

        public static JCDiagnostic.Error ProbFoundReq(JCDiagnostic jCDiagnostic) {
            return new JCDiagnostic.Error("compiler", "prob.found.req", jCDiagnostic);
        }

        public static JCDiagnostic.Error ProcCantAccess1(Symbol symbol, String str) {
            return new JCDiagnostic.Error("compiler", "proc.cant.access.1", symbol, str);
        }

        public static JCDiagnostic.Error ProcCantFindClass(String str) {
            return new JCDiagnostic.Error("compiler", "proc.cant.find.class", str);
        }

        public static JCDiagnostic.Error ProcMessager(String str) {
            return new JCDiagnostic.Error("compiler", "proc.messager", str);
        }

        public static JCDiagnostic.Error ProcNoExplicitAnnotationProcessingRequested(List<? extends String> list) {
            return new JCDiagnostic.Error("compiler", "proc.no.explicit.annotation.processing.requested", list);
        }

        public static JCDiagnostic.Error ProcProcessorCantInstantiate(String str) {
            return new JCDiagnostic.Error("compiler", "proc.processor.cant.instantiate", str);
        }

        public static JCDiagnostic.Error ProcProcessorNotFound(String str) {
            return new JCDiagnostic.Error("compiler", "proc.processor.not.found", str);
        }

        public static JCDiagnostic.Error ProcProcessorWrongType(String str) {
            return new JCDiagnostic.Error("compiler", "proc.processor.wrong.type", str);
        }

        public static JCDiagnostic.Error QualifiedNewOfStaticClass(Void r32) {
            return new JCDiagnostic.Error("compiler", "qualified.new.of.static.class", r32);
        }

        public static JCDiagnostic.Error ReceiverParameterNotApplicableConstructorToplevelClass(Symbol symbol) {
            return new JCDiagnostic.Error("compiler", "receiver.parameter.not.applicable.constructor.toplevel.class", symbol);
        }

        public static JCDiagnostic.Error RefAmbiguous(Name name, Kinds.Kind kind, Symbol symbol, Symbol symbol2, Kinds.Kind kind2, Symbol symbol3, Symbol symbol4) {
            return new JCDiagnostic.Error("compiler", "ref.ambiguous", name, kind, symbol, symbol2, kind2, symbol3, symbol4);
        }

        public static JCDiagnostic.Error RepeatableAnnotationsNotSupportedInSource(String str) {
            return new JCDiagnostic.Error("compiler", "repeatable.annotations.not.supported.in.source", str);
        }

        public static JCDiagnostic.Error RepeatedProvidesForService(Symbol symbol) {
            return new JCDiagnostic.Error("compiler", "repeated.provides.for.service", symbol);
        }

        public static JCDiagnostic.Error ReportAccess(Symbol symbol, Set<? extends Modifier> set, Symbol symbol2) {
            return new JCDiagnostic.Error("compiler", "report.access", symbol, set, symbol2);
        }

        public static JCDiagnostic.Error ServiceDefinitionIsEnum(Symbol symbol) {
            return new JCDiagnostic.Error("compiler", "service.definition.is.enum", symbol);
        }

        public static JCDiagnostic.Error ServiceImplementationDoesntHaveANoArgsConstructor(Symbol symbol) {
            return new JCDiagnostic.Error("compiler", "service.implementation.doesnt.have.a.no.args.constructor", symbol);
        }

        public static JCDiagnostic.Error ServiceImplementationIsAbstract(Symbol symbol) {
            return new JCDiagnostic.Error("compiler", "service.implementation.is.abstract", symbol);
        }

        public static JCDiagnostic.Error ServiceImplementationIsInner(Symbol symbol) {
            return new JCDiagnostic.Error("compiler", "service.implementation.is.inner", symbol);
        }

        public static JCDiagnostic.Error ServiceImplementationNoArgsConstructorNotPublic(Symbol symbol) {
            return new JCDiagnostic.Error("compiler", "service.implementation.no.args.constructor.not.public", symbol);
        }

        public static JCDiagnostic.Error ServiceImplementationNotInRightModule(Symbol symbol) {
            return new JCDiagnostic.Error("compiler", "service.implementation.not.in.right.module", symbol);
        }

        public static JCDiagnostic.Error StaticIntfMethodInvokeNotSupportedInSource(String str) {
            return new JCDiagnostic.Error("compiler", "static.intf.method.invoke.not.supported.in.source", str);
        }

        public static JCDiagnostic.Error StaticIntfMethodsNotSupportedInSource(String str) {
            return new JCDiagnostic.Error("compiler", "static.intf.methods.not.supported.in.source", str);
        }

        public static JCDiagnostic.Error StringSwitchNotSupportedInSource(String str) {
            return new JCDiagnostic.Error("compiler", "string.switch.not.supported.in.source", str);
        }

        public static JCDiagnostic.Error SyntheticNameConflict(Symbol symbol, Symbol symbol2) {
            return new JCDiagnostic.Error("compiler", "synthetic.name.conflict", symbol, symbol2);
        }

        public static JCDiagnostic.Error TooManyPatchedModules(Set<? extends String> set) {
            return new JCDiagnostic.Error("compiler", "too.many.patched.modules", set);
        }

        public static JCDiagnostic.Error TryResourceMayNotBeAssigned(Symbol symbol) {
            return new JCDiagnostic.Error("compiler", "try.resource.may.not.be.assigned", symbol);
        }

        public static JCDiagnostic.Error TryWithResourcesExprEffectivelyFinalVar(Symbol symbol) {
            return new JCDiagnostic.Error("compiler", "try.with.resources.expr.effectively.final.var", symbol);
        }

        public static JCDiagnostic.Error TryWithResourcesNotSupportedInSource(String str) {
            return new JCDiagnostic.Error("compiler", "try.with.resources.not.supported.in.source", str);
        }

        public static JCDiagnostic.Error TypeAnnotationsNotSupportedInSource(String str) {
            return new JCDiagnostic.Error("compiler", "type.annotations.not.supported.in.source", str);
        }

        public static JCDiagnostic.Error TypeDoesntTakeParams(Symbol symbol) {
            return new JCDiagnostic.Error("compiler", "type.doesnt.take.params", symbol);
        }

        public static JCDiagnostic.Error TypeFoundReq(JCDiagnostic jCDiagnostic, JCDiagnostic jCDiagnostic2) {
            return new JCDiagnostic.Error("compiler", "type.found.req", jCDiagnostic, jCDiagnostic2);
        }

        public static JCDiagnostic.Error TypesIncompatibleAbstractDefault(Kinds.KindName kindName, Type type, Name name, List<? extends Type> list, Symbol symbol, Symbol symbol2) {
            return new JCDiagnostic.Error("compiler", "types.incompatible.abstract.default", kindName, type, name, list, symbol, symbol2);
        }

        public static JCDiagnostic.Error TypesIncompatibleDiffRet(Type type, Type type2, String str) {
            return new JCDiagnostic.Error("compiler", "types.incompatible.diff.ret", type, type2, str);
        }

        public static JCDiagnostic.Error TypesIncompatibleUnrelatedDefaults(Kinds.KindName kindName, Type type, Name name, List<? extends Type> list, Symbol symbol, Symbol symbol2) {
            return new JCDiagnostic.Error("compiler", "types.incompatible.unrelated.defaults", kindName, type, name, list, symbol, symbol2);
        }

        public static JCDiagnostic.Error UndefLabel(Name name) {
            return new JCDiagnostic.Error("compiler", "undef.label", name);
        }

        public static JCDiagnostic.Error UnreportedExceptionDefaultConstructor(Type type) {
            return new JCDiagnostic.Error("compiler", "unreported.exception.default.constructor", type);
        }

        public static JCDiagnostic.Error UnreportedExceptionImplicitClose(Type type, Name name) {
            return new JCDiagnostic.Error("compiler", "unreported.exception.implicit.close", type, name);
        }

        public static JCDiagnostic.Error UnreportedExceptionNeedToCatchOrThrow(Type type) {
            return new JCDiagnostic.Error("compiler", "unreported.exception.need.to.catch.or.throw", type);
        }

        public static JCDiagnostic.Error UnsupportedBinaryLit(String str) {
            return new JCDiagnostic.Error("compiler", "unsupported.binary.lit", str);
        }

        public static JCDiagnostic.Error UnsupportedEncoding(Name name) {
            return new JCDiagnostic.Error("compiler", "unsupported.encoding", name);
        }

        public static JCDiagnostic.Error UnsupportedUnderscoreLit(String str) {
            return new JCDiagnostic.Error("compiler", "unsupported.underscore.lit", str);
        }

        public static JCDiagnostic.Error VarInTryWithResourcesNotSupportedInSource(String str) {
            return new JCDiagnostic.Error("compiler", "var.in.try.with.resources.not.supported.in.source", str);
        }

        public static JCDiagnostic.Error VarMightAlreadyBeAssigned(Symbol symbol) {
            return new JCDiagnostic.Error("compiler", "var.might.already.be.assigned", symbol);
        }

        public static JCDiagnostic.Error VarMightBeAssignedInLoop(Symbol symbol) {
            return new JCDiagnostic.Error("compiler", "var.might.be.assigned.in.loop", symbol);
        }

        public static JCDiagnostic.Error VarMightNotHaveBeenInitialized(Symbol symbol) {
            return new JCDiagnostic.Error("compiler", "var.might.not.have.been.initialized", symbol);
        }

        public static JCDiagnostic.Error VarNotInitializedInDefaultConstructor(Symbol symbol) {
            return new JCDiagnostic.Error("compiler", "var.not.initialized.in.default.constructor", symbol);
        }

        public static JCDiagnostic.Error VarargsInvalidTrustmeAnno(Symbol symbol, JCDiagnostic jCDiagnostic) {
            return new JCDiagnostic.Error("compiler", "varargs.invalid.trustme.anno", symbol, jCDiagnostic);
        }

        public static JCDiagnostic.Error WrongNumberTypeArgs(String str) {
            return new JCDiagnostic.Error("compiler", "wrong.number.type.args", str);
        }

        public static JCDiagnostic.Error AnonymousDiamondMethodDoesNotOverrideSuperclass(JCDiagnostic.Fragment fragment) {
            return new JCDiagnostic.Error("compiler", "anonymous.diamond.method.does.not.override.superclass", fragment);
        }

        public static JCDiagnostic.Error BadFunctionalIntfAnno1(JCDiagnostic.Fragment fragment) {
            return new JCDiagnostic.Error("compiler", "bad.functional.intf.anno.1", fragment);
        }

        public static JCDiagnostic.Error CantAccess(Symbol symbol, JCDiagnostic.Fragment fragment) {
            return new JCDiagnostic.Error("compiler", "cant.access", symbol, fragment);
        }

        public static JCDiagnostic.Error CantApplyDiamond(JCDiagnostic.Fragment fragment, Void r32) {
            return new JCDiagnostic.Error("compiler", "cant.apply.diamond", fragment, r32);
        }

        public static JCDiagnostic.Error CantApplyDiamond1(JCDiagnostic jCDiagnostic, JCDiagnostic.Fragment fragment) {
            return new JCDiagnostic.Error("compiler", "cant.apply.diamond.1", jCDiagnostic, fragment);
        }

        public static JCDiagnostic.Error CantApplySymbol(Kinds.Kind kind, Name name, List<? extends Type> list, List<? extends Type> list2, Kinds.Kind kind2, Type type, JCDiagnostic.Fragment fragment) {
            return new JCDiagnostic.Error("compiler", "cant.apply.symbol", kind, name, list, list2, kind2, type, fragment);
        }

        public static JCDiagnostic.Error CantRefNonEffectivelyFinalVar(Symbol symbol, JCDiagnostic.Fragment fragment) {
            return new JCDiagnostic.Error("compiler", "cant.ref.non.effectively.final.var", symbol, fragment);
        }

        public static JCDiagnostic.Error CantResolveLocation(Kinds.Kind kind, Name name, Void r42, Void r52, JCDiagnostic.Fragment fragment) {
            return new JCDiagnostic.Error("compiler", "cant.resolve.location", kind, name, r42, r52, fragment);
        }

        public static JCDiagnostic.Error CantResolveLocationArgs(Kinds.Kind kind, Name name, Void r42, List<? extends Type> list, JCDiagnostic.Fragment fragment) {
            return new JCDiagnostic.Error("compiler", "cant.resolve.location.args", kind, name, r42, list, fragment);
        }

        public static JCDiagnostic.Error CantResolveLocationArgsParams(Kinds.Kind kind, Name name, List<? extends Type> list, List list2, JCDiagnostic.Fragment fragment) {
            return new JCDiagnostic.Error("compiler", "cant.resolve.location.args.params", kind, name, list, list2, fragment);
        }

        public static JCDiagnostic.Error ErrorReadingFile(JavaFileObject javaFileObject, String str) {
            return new JCDiagnostic.Error("compiler", "error.reading.file", javaFileObject, str);
        }

        public static JCDiagnostic.Error ForeachNotApplicableToType(Type type, JCDiagnostic.Fragment fragment) {
            return new JCDiagnostic.Error("compiler", "foreach.not.applicable.to.type", type, fragment);
        }

        public static JCDiagnostic.Error IllegalDefaultSuperCall(Type type, JCDiagnostic.Fragment fragment) {
            return new JCDiagnostic.Error("compiler", "illegal.default.super.call", type, fragment);
        }

        public static JCDiagnostic.Error InvalidMref(Kinds.Kind kind, JCDiagnostic.Fragment fragment) {
            return new JCDiagnostic.Error("compiler", "invalid.mref", kind, fragment);
        }

        public static JCDiagnostic.Error InvalidRepeatableAnnotationElemNondefault(Type type, Symbol symbol) {
            return new JCDiagnostic.Error("compiler", "invalid.repeatable.annotation.elem.nondefault", type, symbol);
        }

        public static JCDiagnostic.Error InvalidRepeatableAnnotationNoValue(Type type) {
            return new JCDiagnostic.Error("compiler", "invalid.repeatable.annotation.no.value", type);
        }

        public static JCDiagnostic.Error InvalidRepeatableAnnotationValueReturn(Type type, Void r32, Type type2) {
            return new JCDiagnostic.Error("compiler", "invalid.repeatable.annotation.value.return", type, r32, type2);
        }

        public static JCDiagnostic.Error NotDefAccessClassIntfCantAccessReason(Symbol symbol, Symbol symbol2, Symbol symbol3, JCDiagnostic.Fragment fragment) {
            return new JCDiagnostic.Error("compiler", "not.def.access.class.intf.cant.access.reason", symbol, symbol2, symbol3, fragment);
        }

        public static JCDiagnostic.Error NotDefAccessPackageCantAccess(Symbol symbol, Symbol symbol2, JCDiagnostic.Fragment fragment) {
            return new JCDiagnostic.Error("compiler", "not.def.access.package.cant.access", symbol, symbol2, fragment);
        }

        public static JCDiagnostic.Error NotWithinBounds(Type type, Symbol symbol) {
            return new JCDiagnostic.Error("compiler", "not.within.bounds", type, symbol);
        }

        public static JCDiagnostic.Error OverrideIncompatibleRet(JCDiagnostic.Fragment fragment, Type type, Type type2) {
            return new JCDiagnostic.Error("compiler", "override.incompatible.ret", fragment, type, type2);
        }

        public static JCDiagnostic.Error OverrideMeth(JCDiagnostic.Fragment fragment, Set<? extends Modifier> set) {
            return new JCDiagnostic.Error("compiler", "override.meth", fragment, set);
        }

        public static JCDiagnostic.Error OverrideMethDoesntThrow(JCDiagnostic.Fragment fragment, Type type) {
            return new JCDiagnostic.Error("compiler", "override.meth.doesnt.throw", fragment, type);
        }

        public static JCDiagnostic.Error OverrideStatic(JCDiagnostic.Fragment fragment) {
            return new JCDiagnostic.Error("compiler", "override.static", fragment);
        }

        public static JCDiagnostic.Error OverrideWeakerAccess(JCDiagnostic.Fragment fragment, Set<? extends Modifier> set) {
            return new JCDiagnostic.Error("compiler", "override.weaker.access", fragment, set);
        }

        public static JCDiagnostic.Error PackageNotVisible(Symbol symbol, JCDiagnostic.Fragment fragment) {
            return new JCDiagnostic.Error("compiler", "package.not.visible", symbol, fragment);
        }

        public static JCDiagnostic.Error ProbFoundReq(JCDiagnostic.Fragment fragment) {
            return new JCDiagnostic.Error("compiler", "prob.found.req", fragment);
        }

        public static JCDiagnostic.Error TypeFoundReq(JCDiagnostic jCDiagnostic, JCDiagnostic.Fragment fragment) {
            return new JCDiagnostic.Error("compiler", "type.found.req", jCDiagnostic, fragment);
        }

        public static JCDiagnostic.Error VarargsInvalidTrustmeAnno(Symbol symbol, JCDiagnostic.Fragment fragment) {
            return new JCDiagnostic.Error("compiler", "varargs.invalid.trustme.anno", symbol, fragment);
        }

        public static JCDiagnostic.Error CantApplyDiamond1(JCDiagnostic.Fragment fragment, JCDiagnostic jCDiagnostic) {
            return new JCDiagnostic.Error("compiler", "cant.apply.diamond.1", fragment, jCDiagnostic);
        }

        public static JCDiagnostic.Error CantApplySymbol(Kinds.Kind kind, Name name, List<? extends Type> list, JCDiagnostic jCDiagnostic, Kinds.Kind kind2, Type type, JCDiagnostic jCDiagnostic2) {
            return new JCDiagnostic.Error("compiler", "cant.apply.symbol", kind, name, list, jCDiagnostic, kind2, type, jCDiagnostic2);
        }

        public static JCDiagnostic.Error TypeFoundReq(JCDiagnostic.Fragment fragment, JCDiagnostic jCDiagnostic) {
            return new JCDiagnostic.Error("compiler", "type.found.req", fragment, jCDiagnostic);
        }

        public static JCDiagnostic.Error CantApplyDiamond1(JCDiagnostic.Fragment fragment, JCDiagnostic.Fragment fragment2) {
            return new JCDiagnostic.Error("compiler", "cant.apply.diamond.1", fragment, fragment2);
        }

        public static JCDiagnostic.Error CantApplySymbol(Kinds.Kind kind, Name name, List<? extends Type> list, JCDiagnostic jCDiagnostic, Kinds.Kind kind2, Type type, JCDiagnostic.Fragment fragment) {
            return new JCDiagnostic.Error("compiler", "cant.apply.symbol", kind, name, list, jCDiagnostic, kind2, type, fragment);
        }

        public static JCDiagnostic.Error TypeFoundReq(JCDiagnostic.Fragment fragment, JCDiagnostic.Fragment fragment2) {
            return new JCDiagnostic.Error("compiler", "type.found.req", fragment, fragment2);
        }

        public static JCDiagnostic.Error CantApplyDiamond1(Type type, JCDiagnostic jCDiagnostic) {
            return new JCDiagnostic.Error("compiler", "cant.apply.diamond.1", type, jCDiagnostic);
        }

        public static JCDiagnostic.Error CantApplySymbol(Kinds.Kind kind, Name name, List<? extends Type> list, JCDiagnostic.Fragment fragment, Kinds.Kind kind2, Type type, JCDiagnostic jCDiagnostic) {
            return new JCDiagnostic.Error("compiler", "cant.apply.symbol", kind, name, list, fragment, kind2, type, jCDiagnostic);
        }

        public static JCDiagnostic.Error TypeFoundReq(Type type, JCDiagnostic jCDiagnostic) {
            return new JCDiagnostic.Error("compiler", "type.found.req", type, jCDiagnostic);
        }

        public static JCDiagnostic.Error CantApplyDiamond1(Type type, JCDiagnostic.Fragment fragment) {
            return new JCDiagnostic.Error("compiler", "cant.apply.diamond.1", type, fragment);
        }

        public static JCDiagnostic.Error CantApplySymbol(Kinds.Kind kind, Name name, List<? extends Type> list, JCDiagnostic.Fragment fragment, Kinds.Kind kind2, Type type, JCDiagnostic.Fragment fragment2) {
            return new JCDiagnostic.Error("compiler", "cant.apply.symbol", kind, name, list, fragment, kind2, type, fragment2);
        }

        public static JCDiagnostic.Error TypeFoundReq(Type type, JCDiagnostic.Fragment fragment) {
            return new JCDiagnostic.Error("compiler", "type.found.req", type, fragment);
        }

        public static JCDiagnostic.Error CantApplySymbol(Kinds.Kind kind, Name name, JCDiagnostic jCDiagnostic, List<? extends Type> list, Kinds.Kind kind2, Type type, JCDiagnostic jCDiagnostic2) {
            return new JCDiagnostic.Error("compiler", "cant.apply.symbol", kind, name, jCDiagnostic, list, kind2, type, jCDiagnostic2);
        }

        public static JCDiagnostic.Error CantApplySymbol(Kinds.Kind kind, Name name, JCDiagnostic jCDiagnostic, List<? extends Type> list, Kinds.Kind kind2, Type type, JCDiagnostic.Fragment fragment) {
            return new JCDiagnostic.Error("compiler", "cant.apply.symbol", kind, name, jCDiagnostic, list, kind2, type, fragment);
        }

        public static JCDiagnostic.Error CantApplySymbol(Kinds.Kind kind, Name name, JCDiagnostic jCDiagnostic, JCDiagnostic jCDiagnostic2, Kinds.Kind kind2, Type type, JCDiagnostic jCDiagnostic3) {
            return new JCDiagnostic.Error("compiler", "cant.apply.symbol", kind, name, jCDiagnostic, jCDiagnostic2, kind2, type, jCDiagnostic3);
        }

        public static JCDiagnostic.Error CantApplySymbol(Kinds.Kind kind, Name name, JCDiagnostic jCDiagnostic, JCDiagnostic jCDiagnostic2, Kinds.Kind kind2, Type type, JCDiagnostic.Fragment fragment) {
            return new JCDiagnostic.Error("compiler", "cant.apply.symbol", kind, name, jCDiagnostic, jCDiagnostic2, kind2, type, fragment);
        }

        public static JCDiagnostic.Error CantApplySymbol(Kinds.Kind kind, Name name, JCDiagnostic jCDiagnostic, JCDiagnostic.Fragment fragment, Kinds.Kind kind2, Type type, JCDiagnostic jCDiagnostic2) {
            return new JCDiagnostic.Error("compiler", "cant.apply.symbol", kind, name, jCDiagnostic, fragment, kind2, type, jCDiagnostic2);
        }

        public static JCDiagnostic.Error CantApplySymbol(Kinds.Kind kind, Name name, JCDiagnostic jCDiagnostic, JCDiagnostic.Fragment fragment, Kinds.Kind kind2, Type type, JCDiagnostic.Fragment fragment2) {
            return new JCDiagnostic.Error("compiler", "cant.apply.symbol", kind, name, jCDiagnostic, fragment, kind2, type, fragment2);
        }

        public static JCDiagnostic.Error CantApplySymbol(Kinds.Kind kind, Name name, JCDiagnostic.Fragment fragment, List<? extends Type> list, Kinds.Kind kind2, Type type, JCDiagnostic jCDiagnostic) {
            return new JCDiagnostic.Error("compiler", "cant.apply.symbol", kind, name, fragment, list, kind2, type, jCDiagnostic);
        }

        public static JCDiagnostic.Error CantApplySymbol(Kinds.Kind kind, Name name, JCDiagnostic.Fragment fragment, List<? extends Type> list, Kinds.Kind kind2, Type type, JCDiagnostic.Fragment fragment2) {
            return new JCDiagnostic.Error("compiler", "cant.apply.symbol", kind, name, fragment, list, kind2, type, fragment2);
        }

        public static JCDiagnostic.Error CantApplySymbol(Kinds.Kind kind, Name name, JCDiagnostic.Fragment fragment, JCDiagnostic jCDiagnostic, Kinds.Kind kind2, Type type, JCDiagnostic jCDiagnostic2) {
            return new JCDiagnostic.Error("compiler", "cant.apply.symbol", kind, name, fragment, jCDiagnostic, kind2, type, jCDiagnostic2);
        }

        public static JCDiagnostic.Error CantApplySymbol(Kinds.Kind kind, Name name, JCDiagnostic.Fragment fragment, JCDiagnostic jCDiagnostic, Kinds.Kind kind2, Type type, JCDiagnostic.Fragment fragment2) {
            return new JCDiagnostic.Error("compiler", "cant.apply.symbol", kind, name, fragment, jCDiagnostic, kind2, type, fragment2);
        }

        public static JCDiagnostic.Error CantApplySymbol(Kinds.Kind kind, Name name, JCDiagnostic.Fragment fragment, JCDiagnostic.Fragment fragment2, Kinds.Kind kind2, Type type, JCDiagnostic jCDiagnostic) {
            return new JCDiagnostic.Error("compiler", "cant.apply.symbol", kind, name, fragment, fragment2, kind2, type, jCDiagnostic);
        }

        public static JCDiagnostic.Error CantApplySymbol(Kinds.Kind kind, Name name, JCDiagnostic.Fragment fragment, JCDiagnostic.Fragment fragment2, Kinds.Kind kind2, Type type, JCDiagnostic.Fragment fragment3) {
            return new JCDiagnostic.Error("compiler", "cant.apply.symbol", kind, name, fragment, fragment2, kind2, type, fragment3);
        }
    }

    public static class Fragments {
        public static final JCDiagnostic.Fragment ArgLengthMismatch = new JCDiagnostic.Fragment("compiler", "arg.length.mismatch", new Object[0]);
        public static final JCDiagnostic.Fragment BadClassSignature = new JCDiagnostic.Fragment("compiler", "bad.class.signature", new Object[0]);
        public static final JCDiagnostic.Fragment BadConstPoolTag = new JCDiagnostic.Fragment("compiler", "bad.const.pool.tag", new Object[0]);
        public static final JCDiagnostic.Fragment BadConstPoolTagAt = new JCDiagnostic.Fragment("compiler", "bad.const.pool.tag.at", new Object[0]);
        public static final JCDiagnostic.Fragment BadEnclosingClass = new JCDiagnostic.Fragment("compiler", "bad.enclosing.class", new Object[0]);
        public static final JCDiagnostic.Fragment BadModuleInfoName = new JCDiagnostic.Fragment("compiler", "bad.module-info.name", new Object[0]);
        public static final JCDiagnostic.Fragment BadRuntimeInvisibleParamAnnotations = new JCDiagnostic.Fragment("compiler", "bad.runtime.invisible.param.annotations", new Object[0]);
        public static final JCDiagnostic.Fragment BadSignature = new JCDiagnostic.Fragment("compiler", "bad.signature", new Object[0]);
        public static final JCDiagnostic.Fragment BadTypeAnnotationValue = new JCDiagnostic.Fragment("compiler", "bad.type.annotation.value", new Object[0]);
        public static final JCDiagnostic.Fragment BaseMembership = new JCDiagnostic.Fragment("compiler", "base.membership", new Object[0]);
        public static final JCDiagnostic.Fragment CantResolveModules = new JCDiagnostic.Fragment("compiler", "cant.resolve.modules", new Object[0]);
        public static final JCDiagnostic.Fragment ClassFileNotFound = new JCDiagnostic.Fragment("compiler", "class.file.not.found", new Object[0]);
        public static final JCDiagnostic.Fragment ClassFileWrongClass = new JCDiagnostic.Fragment("compiler", "class.file.wrong.class", new Object[0]);
        public static final JCDiagnostic.Fragment ConditionalTargetCantBeVoid = new JCDiagnostic.Fragment("compiler", "conditional.target.cant.be.void", new Object[0]);
        public static final JCDiagnostic.Fragment DiamondAnonymousMethodsImplicitlyOverride = new JCDiagnostic.Fragment("compiler", "diamond.anonymous.methods.implicitly.override", new Object[0]);
        public static final JCDiagnostic.Fragment FatalErrCantClose = new JCDiagnostic.Fragment("compiler", "fatal.err.cant.close", new Object[0]);
        public static final JCDiagnostic.Fragment FatalErrCantLocateCtor = new JCDiagnostic.Fragment("compiler", "fatal.err.cant.locate.ctor", new Object[0]);
        public static final JCDiagnostic.Fragment FatalErrCantLocateField = new JCDiagnostic.Fragment("compiler", "fatal.err.cant.locate.field", new Object[0]);
        public static final JCDiagnostic.Fragment FatalErrCantLocateMeth = new JCDiagnostic.Fragment("compiler", "fatal.err.cant.locate.meth", new Object[0]);
        public static final JCDiagnostic.Fragment FatalErrNoJavaLang = new JCDiagnostic.Fragment("compiler", "fatal.err.no.java.lang", new Object[0]);
        public static final JCDiagnostic.Fragment FileDoesNotContainModule = new JCDiagnostic.Fragment("compiler", "file.does.not.contain.module", new Object[0]);
        public static final JCDiagnostic.Fragment FileDoesNotContainPackage = new JCDiagnostic.Fragment("compiler", "file.does.not.contain.package", new Object[0]);
        public static final JCDiagnostic.Fragment IllegalStartOfClassFile = new JCDiagnostic.Fragment("compiler", "illegal.start.of.class.file", new Object[0]);
        public static final JCDiagnostic.Fragment IncompatibleArgTypesInLambda = new JCDiagnostic.Fragment("compiler", "incompatible.arg.types.in.lambda", new Object[0]);
        public static final JCDiagnostic.Fragment IncompatibleArgTypesInMref = new JCDiagnostic.Fragment("compiler", "incompatible.arg.types.in.mref", new Object[0]);
        public static final JCDiagnostic.Fragment InnerCls = new JCDiagnostic.Fragment("compiler", "inner.cls", new Object[0]);
        public static final JCDiagnostic.Fragment KindnameAnnotation = new JCDiagnostic.Fragment("compiler", "kindname.annotation", new Object[0]);
        public static final JCDiagnostic.Fragment KindnameClass = new JCDiagnostic.Fragment("compiler", "kindname.class", new Object[0]);
        public static final JCDiagnostic.Fragment KindnameConstructor = new JCDiagnostic.Fragment("compiler", "kindname.constructor", new Object[0]);
        public static final JCDiagnostic.Fragment KindnameEnum = new JCDiagnostic.Fragment("compiler", "kindname.enum", new Object[0]);
        public static final JCDiagnostic.Fragment KindnameInstanceInit = new JCDiagnostic.Fragment("compiler", "kindname.instance.init", new Object[0]);
        public static final JCDiagnostic.Fragment KindnameInterface = new JCDiagnostic.Fragment("compiler", "kindname.interface", new Object[0]);
        public static final JCDiagnostic.Fragment KindnameMethod = new JCDiagnostic.Fragment("compiler", "kindname.method", new Object[0]);
        public static final JCDiagnostic.Fragment KindnameModule = new JCDiagnostic.Fragment("compiler", "kindname.module", new Object[0]);
        public static final JCDiagnostic.Fragment KindnamePackage = new JCDiagnostic.Fragment("compiler", "kindname.package", new Object[0]);
        public static final JCDiagnostic.Fragment KindnameStatic = new JCDiagnostic.Fragment("compiler", "kindname.static", new Object[0]);
        public static final JCDiagnostic.Fragment KindnameStaticInit = new JCDiagnostic.Fragment("compiler", "kindname.static.init", new Object[0]);
        public static final JCDiagnostic.Fragment KindnameTypeVariable = new JCDiagnostic.Fragment("compiler", "kindname.type.variable", new Object[0]);
        public static final JCDiagnostic.Fragment KindnameTypeVariableBound = new JCDiagnostic.Fragment("compiler", "kindname.type.variable.bound", new Object[0]);
        public static final JCDiagnostic.Fragment KindnameValue = new JCDiagnostic.Fragment("compiler", "kindname.value", new Object[0]);
        public static final JCDiagnostic.Fragment KindnameVariable = new JCDiagnostic.Fragment("compiler", "kindname.variable", new Object[0]);
        public static final JCDiagnostic.Fragment Lambda = new JCDiagnostic.Fragment("compiler", "lambda", new Object[0]);
        public static final JCDiagnostic.Fragment LocnModule_path = new JCDiagnostic.Fragment("compiler", "locn.module_path", new Object[0]);
        public static final JCDiagnostic.Fragment LocnModule_source_path = new JCDiagnostic.Fragment("compiler", "locn.module_source_path", new Object[0]);
        public static final JCDiagnostic.Fragment LocnSystem_modules = new JCDiagnostic.Fragment("compiler", "locn.system_modules", new Object[0]);
        public static final JCDiagnostic.Fragment LocnUpgrade_module_path = new JCDiagnostic.Fragment("compiler", "locn.upgrade_module_path", new Object[0]);
        public static final JCDiagnostic.Fragment MalformedVarargMethod = new JCDiagnostic.Fragment("compiler", "malformed.vararg.method", new Object[0]);
        public static final JCDiagnostic.Fragment ModuleInfoInvalidSuperClass = new JCDiagnostic.Fragment("compiler", "module.info.invalid.super.class", new Object[0]);
        public static final JCDiagnostic.Fragment NoArgs = new JCDiagnostic.Fragment("compiler", "no.args", new Object[0]);
        public static final JCDiagnostic.Fragment NoUniqueMinimalInstanceExists = new JCDiagnostic.Fragment("compiler", "no.unique.minimal.instance.exists", new Object[0]);
        public static final JCDiagnostic.Fragment ResumeAbort = new JCDiagnostic.Fragment("compiler", "resume.abort", new Object[0]);
        public static final JCDiagnostic.Fragment SourceUnavailable = new JCDiagnostic.Fragment("compiler", "source.unavailable", new Object[0]);
        public static final JCDiagnostic.Fragment StatExprExpected = new JCDiagnostic.Fragment("compiler", "stat.expr.expected", new Object[0]);
        public static final JCDiagnostic.Fragment StaticMrefWithTargs = new JCDiagnostic.Fragment("compiler", "static.mref.with.targs", new Object[0]);
        public static final JCDiagnostic.Fragment TokenBadSymbol = new JCDiagnostic.Fragment("compiler", "token.bad-symbol", new Object[0]);
        public static final JCDiagnostic.Fragment TokenCharacter = new JCDiagnostic.Fragment("compiler", "token.character", new Object[0]);
        public static final JCDiagnostic.Fragment TokenDouble = new JCDiagnostic.Fragment("compiler", "token.double", new Object[0]);
        public static final JCDiagnostic.Fragment TokenEndOfInput = new JCDiagnostic.Fragment("compiler", "token.end-of-input", new Object[0]);
        public static final JCDiagnostic.Fragment TokenFloat = new JCDiagnostic.Fragment("compiler", "token.float", new Object[0]);
        public static final JCDiagnostic.Fragment TokenIdentifier = new JCDiagnostic.Fragment("compiler", "token.identifier", new Object[0]);
        public static final JCDiagnostic.Fragment TokenInteger = new JCDiagnostic.Fragment("compiler", "token.integer", new Object[0]);
        public static final JCDiagnostic.Fragment TokenLongInteger = new JCDiagnostic.Fragment("compiler", "token.long-integer", new Object[0]);
        public static final JCDiagnostic.Fragment TokenString = new JCDiagnostic.Fragment("compiler", "token.string", new Object[0]);
        public static final JCDiagnostic.Fragment TypeCaptureof1 = new JCDiagnostic.Fragment("compiler", "type.captureof.1", new Object[0]);
        public static final JCDiagnostic.Fragment TypeNone = new JCDiagnostic.Fragment("compiler", "type.none", new Object[0]);
        public static final JCDiagnostic.Fragment TypeNull = new JCDiagnostic.Fragment("compiler", "type.null", new Object[0]);
        public static final JCDiagnostic.Fragment TypeReqArrayOrIterable = new JCDiagnostic.Fragment("compiler", "type.req.array.or.iterable", new Object[0]);
        public static final JCDiagnostic.Fragment TypeReqClass = new JCDiagnostic.Fragment("compiler", "type.req.class", new Object[0]);
        public static final JCDiagnostic.Fragment TypeReqClassArray = new JCDiagnostic.Fragment("compiler", "type.req.class.array", new Object[0]);
        public static final JCDiagnostic.Fragment TypeReqExact = new JCDiagnostic.Fragment("compiler", "type.req.exact", new Object[0]);
        public static final JCDiagnostic.Fragment TypeReqRef = new JCDiagnostic.Fragment("compiler", "type.req.ref", new Object[0]);
        public static final JCDiagnostic.Fragment UnableToAccessFile = new JCDiagnostic.Fragment("compiler", "unable.to.access.file", new Object[0]);
        public static final JCDiagnostic.Fragment UncheckedAssign = new JCDiagnostic.Fragment("compiler", "unchecked.assign", new Object[0]);
        public static final JCDiagnostic.Fragment UncheckedCastToType = new JCDiagnostic.Fragment("compiler", "unchecked.cast.to.type", new Object[0]);
        public static final JCDiagnostic.Fragment UndeclTypeVar = new JCDiagnostic.Fragment("compiler", "undecl.type.var", new Object[0]);
        public static final JCDiagnostic.Fragment UnexpectedRetVal = new JCDiagnostic.Fragment("compiler", "unexpected.ret.val", new Object[0]);
        public static final JCDiagnostic.Fragment UnicodeStrNotSupported = new JCDiagnostic.Fragment("compiler", "unicode.str.not.supported", new Object[0]);
        public static final JCDiagnostic.Fragment UnnamedModule = new JCDiagnostic.Fragment("compiler", "unnamed.module", new Object[0]);
        public static final JCDiagnostic.Fragment UnnamedPackage = new JCDiagnostic.Fragment("compiler", "unnamed.package", new Object[0]);
        public static final JCDiagnostic.Fragment VersionNotAvailable = new JCDiagnostic.Fragment("compiler", "version.not.available", new Object[0]);
        public static final JCDiagnostic.Fragment WhereDescriptionCaptured = new JCDiagnostic.Fragment("compiler", "where.description.captured", new Object[0]);
        public static final JCDiagnostic.Fragment WrongVersion = new JCDiagnostic.Fragment("compiler", "wrong.version", new Object[0]);

        public static JCDiagnostic.Fragment AnachronisticModuleInfo(String str, String str2) {
            return new JCDiagnostic.Fragment("compiler", "anachronistic.module.info", str, str2);
        }

        public static JCDiagnostic.Fragment AnonymousClass(Name name) {
            return new JCDiagnostic.Fragment("compiler", "anonymous.class", name);
        }

        public static JCDiagnostic.Fragment ApplicableMethodFound(int i10, Symbol symbol, Void r32) {
            return new JCDiagnostic.Fragment("compiler", "applicable.method.found", Integer.valueOf(i10), symbol, r32);
        }

        public static JCDiagnostic.Fragment ApplicableMethodFound1(int i10, Symbol symbol, JCDiagnostic jCDiagnostic) {
            return new JCDiagnostic.Fragment("compiler", "applicable.method.found.1", Integer.valueOf(i10), symbol, jCDiagnostic);
        }

        public static JCDiagnostic.Fragment BadClassFile(Name name) {
            return new JCDiagnostic.Fragment("compiler", "bad.class.file", name);
        }

        public static JCDiagnostic.Fragment BadClassFileHeader(File file, JCDiagnostic jCDiagnostic) {
            return new JCDiagnostic.Fragment("compiler", "bad.class.file.header", file, jCDiagnostic);
        }

        public static JCDiagnostic.Fragment BadConstPoolEntry(File file, String str, int i10) {
            return new JCDiagnostic.Fragment("compiler", "bad.const.pool.entry", file, str, Integer.valueOf(i10));
        }

        public static JCDiagnostic.Fragment BadConstantRange(String str, Symbol symbol, Type type) {
            return new JCDiagnostic.Fragment("compiler", "bad.constant.range", str, symbol, type);
        }

        public static JCDiagnostic.Fragment BadConstantValue(String str, Symbol symbol, String str2) {
            return new JCDiagnostic.Fragment("compiler", "bad.constant.value", str, symbol, str2);
        }

        public static JCDiagnostic.Fragment BadEnclosingMethod(Symbol symbol) {
            return new JCDiagnostic.Fragment("compiler", "bad.enclosing.method", symbol);
        }

        public static JCDiagnostic.Fragment BadInstanceMethodInUnboundLookup(Kinds.Kind kind, Symbol symbol) {
            return new JCDiagnostic.Fragment("compiler", "bad.instance.method.in.unbound.lookup", kind, symbol);
        }

        public static JCDiagnostic.Fragment BadIntersectionTargetForFunctionalExpr(JCDiagnostic jCDiagnostic) {
            return new JCDiagnostic.Fragment("compiler", "bad.intersection.target.for.functional.expr", jCDiagnostic);
        }

        public static JCDiagnostic.Fragment BadSourceFileHeader(File file, JCDiagnostic jCDiagnostic) {
            return new JCDiagnostic.Fragment("compiler", "bad.source.file.header", file, jCDiagnostic);
        }

        public static JCDiagnostic.Fragment BadStaticMethodInBoundLookup(Kinds.Kind kind, Symbol symbol) {
            return new JCDiagnostic.Fragment("compiler", "bad.static.method.in.bound.lookup", kind, symbol);
        }

        public static JCDiagnostic.Fragment BadStaticMethodInUnboundLookup(Kinds.Kind kind, Symbol symbol) {
            return new JCDiagnostic.Fragment("compiler", "bad.static.method.in.unbound.lookup", kind, symbol);
        }

        public static JCDiagnostic.Fragment CantAccessInnerClsConstr(Symbol symbol, List<? extends Type> list, Type type) {
            return new JCDiagnostic.Fragment("compiler", "cant.access.inner.cls.constr", symbol, list, type);
        }

        public static JCDiagnostic.Fragment CantApplyDiamond1(JCDiagnostic jCDiagnostic, JCDiagnostic jCDiagnostic2) {
            return new JCDiagnostic.Fragment("compiler", "cant.apply.diamond.1", jCDiagnostic, jCDiagnostic2);
        }

        public static JCDiagnostic.Fragment CantApplySymbol(Kinds.Kind kind, Name name, List<? extends Type> list, List<? extends Type> list2, Kinds.Kind kind2, Type type, JCDiagnostic jCDiagnostic) {
            return new JCDiagnostic.Fragment("compiler", "cant.apply.symbol", kind, name, list, list2, kind2, type, jCDiagnostic);
        }

        public static JCDiagnostic.Fragment CantApplySymbols(Kinds.Kind kind, Name name, List<? extends Type> list) {
            return new JCDiagnostic.Fragment("compiler", "cant.apply.symbols", kind, name, list);
        }

        public static JCDiagnostic.Fragment CantHide(Symbol symbol, Symbol symbol2, Symbol symbol3, Symbol symbol4) {
            return new JCDiagnostic.Fragment("compiler", "cant.hide", symbol, symbol2, symbol3, symbol4);
        }

        public static JCDiagnostic.Fragment CantImplement(Symbol symbol, Symbol symbol2, Symbol symbol3, Symbol symbol4) {
            return new JCDiagnostic.Fragment("compiler", "cant.implement", symbol, symbol2, symbol3, symbol4);
        }

        public static JCDiagnostic.Fragment CantOverride(Symbol symbol, Symbol symbol2, Symbol symbol3, Symbol symbol4) {
            return new JCDiagnostic.Fragment("compiler", "cant.override", symbol, symbol2, symbol3, symbol4);
        }

        public static JCDiagnostic.Fragment CantResolveLocationArgs(Kinds.Kind kind, Name name, Void r42, List<? extends Type> list, JCDiagnostic jCDiagnostic) {
            return new JCDiagnostic.Fragment("compiler", "cant.resolve.location.args", kind, name, r42, list, jCDiagnostic);
        }

        public static JCDiagnostic.Fragment CantResolveLocationArgsParams(Kinds.Kind kind, Name name, List<? extends Type> list, List list2, JCDiagnostic jCDiagnostic) {
            return new JCDiagnostic.Fragment("compiler", "cant.resolve.location.args.params", kind, name, list, list2, jCDiagnostic);
        }

        public static JCDiagnostic.Fragment CapturedType(int i10) {
            return new JCDiagnostic.Fragment("compiler", "captured.type", Integer.valueOf(i10));
        }

        public static JCDiagnostic.Fragment ClashesWith(Symbol symbol, Symbol symbol2, Symbol symbol3, Symbol symbol4) {
            return new JCDiagnostic.Fragment("compiler", "clashes.with", symbol, symbol2, symbol3, symbol4);
        }

        public static JCDiagnostic.Fragment CountError(int i10) {
            return new JCDiagnostic.Fragment("compiler", "count.error", Integer.valueOf(i10));
        }

        public static JCDiagnostic.Fragment CountErrorPlural(int i10) {
            return new JCDiagnostic.Fragment("compiler", "count.error.plural", Integer.valueOf(i10));
        }

        public static JCDiagnostic.Fragment CountWarn(int i10) {
            return new JCDiagnostic.Fragment("compiler", "count.warn", Integer.valueOf(i10));
        }

        public static JCDiagnostic.Fragment CountWarnPlural(int i10) {
            return new JCDiagnostic.Fragment("compiler", "count.warn.plural", Integer.valueOf(i10));
        }

        public static JCDiagnostic.Fragment Descriptor(Name name, List<? extends Type> list, Type type, List<? extends Type> list2) {
            return new JCDiagnostic.Fragment("compiler", "descriptor", name, list, type, list2);
        }

        public static JCDiagnostic.Fragment DescriptorThrows(Name name, List<? extends Type> list, Type type, List<? extends Type> list2) {
            return new JCDiagnostic.Fragment("compiler", "descriptor.throws", name, list, type, list2);
        }

        public static JCDiagnostic.Fragment Diamond(Symbol symbol) {
            return new JCDiagnostic.Fragment("compiler", "diamond", symbol);
        }

        public static JCDiagnostic.Fragment DiamondAndAnonClassNotSupportedInSource(String str) {
            return new JCDiagnostic.Fragment("compiler", "diamond.and.anon.class.not.supported.in.source", str);
        }

        public static JCDiagnostic.Fragment DiamondAndExplicitParams(Void r32) {
            return new JCDiagnostic.Fragment("compiler", "diamond.and.explicit.params", r32);
        }

        public static JCDiagnostic.Fragment DiamondInvalidArg(List<? extends Type> list, JCDiagnostic jCDiagnostic) {
            return new JCDiagnostic.Fragment("compiler", "diamond.invalid.arg", list, jCDiagnostic);
        }

        public static JCDiagnostic.Fragment DiamondInvalidArgs(List<? extends Type> list, JCDiagnostic jCDiagnostic) {
            return new JCDiagnostic.Fragment("compiler", "diamond.invalid.args", list, jCDiagnostic);
        }

        public static JCDiagnostic.Fragment DiamondNonGeneric(Type type) {
            return new JCDiagnostic.Fragment("compiler", "diamond.non.generic", type);
        }

        public static JCDiagnostic.Fragment ExplicitParamDoNotConformToBounds(Type type, List<? extends Type> list) {
            return new JCDiagnostic.Fragment("compiler", "explicit.param.do.not.conform.to.bounds", type, list);
        }

        public static JCDiagnostic.Fragment FileDoesntContainClass(Name name) {
            return new JCDiagnostic.Fragment("compiler", "file.doesnt.contain.class", name);
        }

        public static JCDiagnostic.Fragment InaccessibleVarargsType(Type type, Kinds.Kind kind, Symbol symbol) {
            return new JCDiagnostic.Fragment("compiler", "inaccessible.varargs.type", type, kind, symbol);
        }

        public static JCDiagnostic.Fragment InapplicableMethod(Kinds.Kind kind, Symbol symbol, Symbol symbol2, JCDiagnostic jCDiagnostic) {
            return new JCDiagnostic.Fragment("compiler", "inapplicable.method", kind, symbol, symbol2, jCDiagnostic);
        }

        public static JCDiagnostic.Fragment IncompatibleAbstracts(Kinds.Kind kind, Symbol symbol) {
            return new JCDiagnostic.Fragment("compiler", "incompatible.abstracts", kind, symbol);
        }

        public static JCDiagnostic.Fragment IncompatibleDescsInFunctionalIntf(Kinds.Kind kind, Symbol symbol) {
            return new JCDiagnostic.Fragment("compiler", "incompatible.descs.in.functional.intf", kind, symbol);
        }

        public static JCDiagnostic.Fragment IncompatibleEqBounds(Type type, List<? extends Type> list) {
            return new JCDiagnostic.Fragment("compiler", "incompatible.eq.bounds", type, list);
        }

        public static JCDiagnostic.Fragment IncompatibleEqLowerBounds(Type type, List<? extends Type> list, List<? extends Type> list2) {
            return new JCDiagnostic.Fragment("compiler", "incompatible.eq.lower.bounds", type, list, list2);
        }

        public static JCDiagnostic.Fragment IncompatibleEqUpperBounds(Type type, List<? extends Type> list, List<? extends Type> list2) {
            return new JCDiagnostic.Fragment("compiler", "incompatible.eq.upper.bounds", type, list, list2);
        }

        public static JCDiagnostic.Fragment IncompatibleRetTypeInLambda(Type type) {
            return new JCDiagnostic.Fragment("compiler", "incompatible.ret.type.in.lambda", type);
        }

        public static JCDiagnostic.Fragment IncompatibleRetTypeInMref(Type type) {
            return new JCDiagnostic.Fragment("compiler", "incompatible.ret.type.in.mref", type);
        }

        public static JCDiagnostic.Fragment IncompatibleTypeInConditional(JCDiagnostic jCDiagnostic) {
            return new JCDiagnostic.Fragment("compiler", "incompatible.type.in.conditional", jCDiagnostic);
        }

        public static JCDiagnostic.Fragment IncompatibleUpperBounds(Type type, List<? extends Type> list) {
            return new JCDiagnostic.Fragment("compiler", "incompatible.upper.bounds", type, list);
        }

        public static JCDiagnostic.Fragment IncompatibleUpperLowerBounds(Type type, List<? extends Type> list, List<? extends Type> list2) {
            return new JCDiagnostic.Fragment("compiler", "incompatible.upper.lower.bounds", type, list, list2);
        }

        public static JCDiagnostic.Fragment InconvertibleTypes(Type type, Type type2) {
            return new JCDiagnostic.Fragment("compiler", "inconvertible.types", type, type2);
        }

        public static JCDiagnostic.Fragment InferArgLengthMismatch(List<? extends Type> list) {
            return new JCDiagnostic.Fragment("compiler", "infer.arg.length.mismatch", list);
        }

        public static JCDiagnostic.Fragment InferNoConformingAssignmentExists(List<? extends Type> list, JCDiagnostic jCDiagnostic) {
            return new JCDiagnostic.Fragment("compiler", "infer.no.conforming.assignment.exists", list, jCDiagnostic);
        }

        public static JCDiagnostic.Fragment InferNoConformingInstanceExists(List<? extends Type> list, Type type, Type type2) {
            return new JCDiagnostic.Fragment("compiler", "infer.no.conforming.instance.exists", list, type, type2);
        }

        public static JCDiagnostic.Fragment InferVarargsArgumentMismatch(List<? extends Type> list, JCDiagnostic jCDiagnostic) {
            return new JCDiagnostic.Fragment("compiler", "infer.varargs.argument.mismatch", list, jCDiagnostic);
        }

        public static JCDiagnostic.Fragment InferredDoNotConformToEqBounds(Type type, List<? extends Type> list) {
            return new JCDiagnostic.Fragment("compiler", "inferred.do.not.conform.to.eq.bounds", type, list);
        }

        public static JCDiagnostic.Fragment InferredDoNotConformToLowerBounds(Type type, List<? extends Type> list) {
            return new JCDiagnostic.Fragment("compiler", "inferred.do.not.conform.to.lower.bounds", type, list);
        }

        public static JCDiagnostic.Fragment InferredDoNotConformToUpperBounds(Type type, List<? extends Type> list) {
            return new JCDiagnostic.Fragment("compiler", "inferred.do.not.conform.to.upper.bounds", type, list);
        }

        public static JCDiagnostic.Fragment IntersectionType(int i10) {
            return new JCDiagnostic.Fragment("compiler", "intersection.type", Integer.valueOf(i10));
        }

        public static JCDiagnostic.Fragment InvalidDefaultInterface(String str, String str2) {
            return new JCDiagnostic.Fragment("compiler", "invalid.default.interface", str, str2);
        }

        public static JCDiagnostic.Fragment InvalidGenericLambdaTarget(Symbol symbol, Kinds.Kind kind, Symbol symbol2) {
            return new JCDiagnostic.Fragment("compiler", "invalid.generic.lambda.target", symbol, kind, symbol2);
        }

        public static JCDiagnostic.Fragment InvalidMref(Kinds.Kind kind, JCDiagnostic jCDiagnostic) {
            return new JCDiagnostic.Fragment("compiler", "invalid.mref", kind, jCDiagnostic);
        }

        public static JCDiagnostic.Fragment InvalidStaticInterface(String str, String str2) {
            return new JCDiagnostic.Fragment("compiler", "invalid.static.interface", str, str2);
        }

        public static JCDiagnostic.Fragment Location(Kinds.Kind kind, Type type, Void r42) {
            return new JCDiagnostic.Fragment("compiler", "location", kind, type, r42);
        }

        public static JCDiagnostic.Fragment Location1(Kinds.Kind kind, Symbol symbol, Type type) {
            return new JCDiagnostic.Fragment("compiler", "location.1", kind, symbol, type);
        }

        public static JCDiagnostic.Fragment MissingRetVal(Void r32) {
            return new JCDiagnostic.Fragment("compiler", "missing.ret.val", r32);
        }

        public static JCDiagnostic.Fragment ModuleNameMismatch(Name name, Name name2) {
            return new JCDiagnostic.Fragment("compiler", "module.name.mismatch", name, name2);
        }

        public static JCDiagnostic.Fragment ModuleNonZeroOpens(Name name) {
            return new JCDiagnostic.Fragment("compiler", "module.non.zero.opens", name);
        }

        public static JCDiagnostic.Fragment MrefInferAndExplicitParams(Void r32) {
            return new JCDiagnostic.Fragment("compiler", "mref.infer.and.explicit.params", r32);
        }

        public static JCDiagnostic.Fragment NoAbstracts(Kinds.Kind kind, Symbol symbol) {
            return new JCDiagnostic.Fragment("compiler", "no.abstracts", kind, symbol);
        }

        public static JCDiagnostic.Fragment NoConformingAssignmentExists(JCDiagnostic jCDiagnostic) {
            return new JCDiagnostic.Fragment("compiler", "no.conforming.assignment.exists", jCDiagnostic);
        }

        public static JCDiagnostic.Fragment NoSuitableFunctionalIntfInst(Type type) {
            return new JCDiagnostic.Fragment("compiler", "no.suitable.functional.intf.inst", type);
        }

        public static JCDiagnostic.Fragment NoUniqueMaximalInstanceExists(Type type, List<? extends Type> list) {
            return new JCDiagnostic.Fragment("compiler", "no.unique.maximal.instance.exists", type, list);
        }

        public static JCDiagnostic.Fragment NotAFunctionalIntf(Symbol symbol) {
            return new JCDiagnostic.Fragment("compiler", "not.a.functional.intf", symbol);
        }

        public static JCDiagnostic.Fragment NotAFunctionalIntf1(Symbol symbol, JCDiagnostic jCDiagnostic) {
            return new JCDiagnostic.Fragment("compiler", "not.a.functional.intf.1", symbol, jCDiagnostic);
        }

        public static JCDiagnostic.Fragment NotAnIntfComponent(Symbol symbol) {
            return new JCDiagnostic.Fragment("compiler", "not.an.intf.component", symbol);
        }

        public static JCDiagnostic.Fragment NotApplicableMethodFound(int i10, Symbol symbol, JCDiagnostic jCDiagnostic) {
            return new JCDiagnostic.Fragment("compiler", "not.applicable.method.found", Integer.valueOf(i10), symbol, jCDiagnostic);
        }

        public static JCDiagnostic.Fragment NotDefAccessClassIntfCantAccess(Symbol symbol, Symbol symbol2) {
            return new JCDiagnostic.Fragment("compiler", "not.def.access.class.intf.cant.access", symbol, symbol2);
        }

        public static JCDiagnostic.Fragment NotDefAccessClassIntfCantAccessReason(Symbol symbol, Symbol symbol2, Symbol symbol3, JCDiagnostic jCDiagnostic) {
            return new JCDiagnostic.Fragment("compiler", "not.def.access.class.intf.cant.access.reason", symbol, symbol2, symbol3, jCDiagnostic);
        }

        public static JCDiagnostic.Fragment NotDefAccessDoesNotRead(Symbol symbol, Symbol symbol2, Symbol symbol3) {
            return new JCDiagnostic.Fragment("compiler", "not.def.access.does.not.read", symbol, symbol2, symbol3);
        }

        public static JCDiagnostic.Fragment NotDefAccessDoesNotReadFromUnnamed(Symbol symbol, Symbol symbol2) {
            return new JCDiagnostic.Fragment("compiler", "not.def.access.does.not.read.from.unnamed", symbol, symbol2);
        }

        public static JCDiagnostic.Fragment NotDefAccessDoesNotReadUnnamed(Symbol symbol, Symbol symbol2) {
            return new JCDiagnostic.Fragment("compiler", "not.def.access.does.not.read.unnamed", symbol, symbol2);
        }

        public static JCDiagnostic.Fragment NotDefAccessNotExported(Symbol symbol, Symbol symbol2) {
            return new JCDiagnostic.Fragment("compiler", "not.def.access.not.exported", symbol, symbol2);
        }

        public static JCDiagnostic.Fragment NotDefAccessNotExportedFromUnnamed(Symbol symbol, Symbol symbol2) {
            return new JCDiagnostic.Fragment("compiler", "not.def.access.not.exported.from.unnamed", symbol, symbol2);
        }

        public static JCDiagnostic.Fragment NotDefAccessNotExportedToModule(Symbol symbol, Symbol symbol2, Symbol symbol3) {
            return new JCDiagnostic.Fragment("compiler", "not.def.access.not.exported.to.module", symbol, symbol2, symbol3);
        }

        public static JCDiagnostic.Fragment NotDefAccessNotExportedToModuleFromUnnamed(Symbol symbol, Symbol symbol2) {
            return new JCDiagnostic.Fragment("compiler", "not.def.access.not.exported.to.module.from.unnamed", symbol, symbol2);
        }

        public static JCDiagnostic.Fragment NotDefAccessPackageCantAccess(Symbol symbol, Symbol symbol2, JCDiagnostic jCDiagnostic) {
            return new JCDiagnostic.Fragment("compiler", "not.def.access.package.cant.access", symbol, symbol2, jCDiagnostic);
        }

        public static JCDiagnostic.Fragment NotDefPublicCantAccess(Symbol symbol, Symbol symbol2) {
            return new JCDiagnostic.Fragment("compiler", "not.def.public.cant.access", symbol, symbol2);
        }

        public static JCDiagnostic.Fragment OverriddenDefault(Symbol symbol, Type type) {
            return new JCDiagnostic.Fragment("compiler", "overridden.default", symbol, type);
        }

        public static JCDiagnostic.Fragment PackageNotVisible(Symbol symbol, JCDiagnostic jCDiagnostic) {
            return new JCDiagnostic.Fragment("compiler", "package.not.visible", symbol, jCDiagnostic);
        }

        public static JCDiagnostic.Fragment PartialInstSig(Type type) {
            return new JCDiagnostic.Fragment("compiler", "partial.inst.sig", type);
        }

        public static JCDiagnostic.Fragment PossibleLossOfPrecision(Type type, Type type2) {
            return new JCDiagnostic.Fragment("compiler", "possible.loss.of.precision", type, type2);
        }

        public static JCDiagnostic.Fragment ProbFoundReq(JCDiagnostic jCDiagnostic) {
            return new JCDiagnostic.Fragment("compiler", "prob.found.req", jCDiagnostic);
        }

        public static JCDiagnostic.Fragment RedundantSupertype(Symbol symbol, Type type) {
            return new JCDiagnostic.Fragment("compiler", "redundant.supertype", symbol, type);
        }

        public static JCDiagnostic.Fragment RefAmbiguous(Name name, Kinds.Kind kind, Symbol symbol, Symbol symbol2, Kinds.Kind kind2, Symbol symbol3, Symbol symbol4) {
            return new JCDiagnostic.Fragment("compiler", "ref.ambiguous", name, kind, symbol, symbol2, kind2, symbol3, symbol4);
        }

        public static JCDiagnostic.Fragment ReportAccess(Symbol symbol, Set<? extends Modifier> set, Symbol symbol2) {
            return new JCDiagnostic.Fragment("compiler", "report.access", symbol, set, symbol2);
        }

        public static JCDiagnostic.Fragment TryNotApplicableToType(Type type) {
            return new JCDiagnostic.Fragment("compiler", "try.not.applicable.to.type", type);
        }

        public static JCDiagnostic.Fragment TypeCaptureof(Name name, Type type) {
            return new JCDiagnostic.Fragment("compiler", "type.captureof", name, type);
        }

        public static JCDiagnostic.Fragment TypeParameter(Type type) {
            return new JCDiagnostic.Fragment("compiler", "type.parameter", type);
        }

        public static JCDiagnostic.Fragment TypeVar(Name name, int i10) {
            return new JCDiagnostic.Fragment("compiler", "type.var", name, Integer.valueOf(i10));
        }

        public static JCDiagnostic.Fragment UncheckedClashWith(Symbol symbol, Symbol symbol2, Symbol symbol3, Symbol symbol4) {
            return new JCDiagnostic.Fragment("compiler", "unchecked.clash.with", symbol, symbol2, symbol3, symbol4);
        }

        public static JCDiagnostic.Fragment UncheckedImplement(Symbol symbol, Symbol symbol2, Symbol symbol3, Symbol symbol4) {
            return new JCDiagnostic.Fragment("compiler", "unchecked.implement", symbol, symbol2, symbol3, symbol4);
        }

        public static JCDiagnostic.Fragment UncheckedOverride(Symbol symbol, Symbol symbol2, Symbol symbol3, Symbol symbol4) {
            return new JCDiagnostic.Fragment("compiler", "unchecked.override", symbol, symbol2, symbol3, symbol4);
        }

        public static JCDiagnostic.Fragment VarargsArgumentMismatch(JCDiagnostic jCDiagnostic) {
            return new JCDiagnostic.Fragment("compiler", "varargs.argument.mismatch", jCDiagnostic);
        }

        public static JCDiagnostic.Fragment VarargsClashWith(Symbol symbol, Symbol symbol2, Symbol symbol3, Symbol symbol4) {
            return new JCDiagnostic.Fragment("compiler", "varargs.clash.with", symbol, symbol2, symbol3, symbol4);
        }

        public static JCDiagnostic.Fragment VarargsImplement(Symbol symbol, Symbol symbol2, Symbol symbol3, Symbol symbol4) {
            return new JCDiagnostic.Fragment("compiler", "varargs.implement", symbol, symbol2, symbol3, symbol4);
        }

        public static JCDiagnostic.Fragment VarargsOverride(Symbol symbol, Symbol symbol2, Symbol symbol3, Symbol symbol4) {
            return new JCDiagnostic.Fragment("compiler", "varargs.override", symbol, symbol2, symbol3, symbol4);
        }

        public static JCDiagnostic.Fragment VarargsTrustmeOnNonVarargsMeth(Symbol symbol) {
            return new JCDiagnostic.Fragment("compiler", "varargs.trustme.on.non.varargs.meth", symbol);
        }

        public static JCDiagnostic.Fragment VarargsTrustmeOnReifiableVarargs(Type type) {
            return new JCDiagnostic.Fragment("compiler", "varargs.trustme.on.reifiable.varargs", type);
        }

        public static JCDiagnostic.Fragment VarargsTrustmeOnVirtualVarargs(Symbol symbol) {
            return new JCDiagnostic.Fragment("compiler", "varargs.trustme.on.virtual.varargs", symbol);
        }

        public static JCDiagnostic.Fragment VarargsTrustmeOnVirtualVarargsFinalOnly(Symbol symbol) {
            return new JCDiagnostic.Fragment("compiler", "varargs.trustme.on.virtual.varargs.final.only", symbol);
        }

        public static JCDiagnostic.Fragment VerboseCheckingAttribution(Symbol symbol) {
            return new JCDiagnostic.Fragment("compiler", "verbose.checking.attribution", symbol);
        }

        public static JCDiagnostic.Fragment VerboseClasspath(String str) {
            return new JCDiagnostic.Fragment("compiler", "verbose.classpath", str);
        }

        public static JCDiagnostic.Fragment VerboseLoading(String str) {
            return new JCDiagnostic.Fragment("compiler", "verbose.loading", str);
        }

        public static JCDiagnostic.Fragment VerboseParsingDone(String str) {
            return new JCDiagnostic.Fragment("compiler", "verbose.parsing.done", str);
        }

        public static JCDiagnostic.Fragment VerboseParsingStarted(File file) {
            return new JCDiagnostic.Fragment("compiler", "verbose.parsing.started", file);
        }

        public static JCDiagnostic.Fragment VerboseSourcepath(String str) {
            return new JCDiagnostic.Fragment("compiler", "verbose.sourcepath", str);
        }

        public static JCDiagnostic.Fragment VerboseTotal(String str) {
            return new JCDiagnostic.Fragment("compiler", "verbose.total", str);
        }

        public static JCDiagnostic.Fragment VerboseWroteFile(File file) {
            return new JCDiagnostic.Fragment("compiler", "verbose.wrote.file", file);
        }

        public static JCDiagnostic.Fragment WhereCaptured(Type type, Type type2, Type type3, Type type4) {
            return new JCDiagnostic.Fragment("compiler", "where.captured", type, type2, type3, type4);
        }

        public static JCDiagnostic.Fragment WhereCaptured1(Type type, Type type2, Void r42, Type type3) {
            return new JCDiagnostic.Fragment("compiler", "where.captured.1", type, type2, r42, type3);
        }

        public static JCDiagnostic.Fragment WhereDescriptionCaptured1(Set<? extends Type> set) {
            return new JCDiagnostic.Fragment("compiler", "where.description.captured.1", set);
        }

        public static JCDiagnostic.Fragment WhereDescriptionIntersection(Set<? extends Type> set) {
            return new JCDiagnostic.Fragment("compiler", "where.description.intersection", set);
        }

        public static JCDiagnostic.Fragment WhereDescriptionIntersection1(Set<? extends Type> set) {
            return new JCDiagnostic.Fragment("compiler", "where.description.intersection.1", set);
        }

        public static JCDiagnostic.Fragment WhereDescriptionTypevar(Set<? extends Type> set) {
            return new JCDiagnostic.Fragment("compiler", "where.description.typevar", set);
        }

        public static JCDiagnostic.Fragment WhereDescriptionTypevar1(Set<? extends Type> set) {
            return new JCDiagnostic.Fragment("compiler", "where.description.typevar.1", set);
        }

        public static JCDiagnostic.Fragment WhereFreshTypevar(Type type, List<? extends Type> list) {
            return new JCDiagnostic.Fragment("compiler", "where.fresh.typevar", type, list);
        }

        public static JCDiagnostic.Fragment WhereIntersection(Type type, List<? extends Type> list) {
            return new JCDiagnostic.Fragment("compiler", "where.intersection", type, list);
        }

        public static JCDiagnostic.Fragment WhereTypevar(Type type, List<? extends Type> list, Kinds.Kind kind, Symbol symbol) {
            return new JCDiagnostic.Fragment("compiler", "where.typevar", type, list, kind, symbol);
        }

        public static JCDiagnostic.Fragment WhereTypevar1(Type type, List<? extends Type> list, Kinds.Kind kind, Symbol symbol) {
            return new JCDiagnostic.Fragment("compiler", "where.typevar.1", type, list, kind, symbol);
        }

        public static JCDiagnostic.Fragment WrongNumberTypeArgs(String str) {
            return new JCDiagnostic.Fragment("compiler", "wrong.number.type.args", str);
        }

        public static JCDiagnostic.Fragment XPrintProcessorInfo(String str, String str2, boolean z10) {
            return new JCDiagnostic.Fragment("compiler", "x.print.processor.info", str, str2, Boolean.valueOf(z10));
        }

        public static JCDiagnostic.Fragment XPrintRounds(int i10, String str, Set<? extends Symbol> set, boolean z10) {
            return new JCDiagnostic.Fragment("compiler", "x.print.rounds", Integer.valueOf(i10), str, set, Boolean.valueOf(z10));
        }

        public static JCDiagnostic.Fragment ApplicableMethodFound1(int i10, Symbol symbol, JCDiagnostic.Fragment fragment) {
            return new JCDiagnostic.Fragment("compiler", "applicable.method.found.1", Integer.valueOf(i10), symbol, fragment);
        }

        public static JCDiagnostic.Fragment BadClassFileHeader(File file, JCDiagnostic.Fragment fragment) {
            return new JCDiagnostic.Fragment("compiler", "bad.class.file.header", file, fragment);
        }

        public static JCDiagnostic.Fragment BadConstPoolEntry(JavaFileObject javaFileObject, String str, int i10) {
            return new JCDiagnostic.Fragment("compiler", "bad.const.pool.entry", javaFileObject, str, Integer.valueOf(i10));
        }

        public static JCDiagnostic.Fragment BadIntersectionTargetForFunctionalExpr(JCDiagnostic.Fragment fragment) {
            return new JCDiagnostic.Fragment("compiler", "bad.intersection.target.for.functional.expr", fragment);
        }

        public static JCDiagnostic.Fragment BadSourceFileHeader(File file, JCDiagnostic.Fragment fragment) {
            return new JCDiagnostic.Fragment("compiler", "bad.source.file.header", file, fragment);
        }

        public static JCDiagnostic.Fragment CantApplyDiamond1(JCDiagnostic jCDiagnostic, JCDiagnostic.Fragment fragment) {
            return new JCDiagnostic.Fragment("compiler", "cant.apply.diamond.1", jCDiagnostic, fragment);
        }

        public static JCDiagnostic.Fragment CantApplySymbol(Kinds.Kind kind, Name name, List<? extends Type> list, List<? extends Type> list2, Kinds.Kind kind2, Type type, JCDiagnostic.Fragment fragment) {
            return new JCDiagnostic.Fragment("compiler", "cant.apply.symbol", kind, name, list, list2, kind2, type, fragment);
        }

        public static JCDiagnostic.Fragment CantResolveLocationArgs(Kinds.Kind kind, Name name, Void r42, List<? extends Type> list, JCDiagnostic.Fragment fragment) {
            return new JCDiagnostic.Fragment("compiler", "cant.resolve.location.args", kind, name, r42, list, fragment);
        }

        public static JCDiagnostic.Fragment CantResolveLocationArgsParams(Kinds.Kind kind, Name name, List<? extends Type> list, List list2, JCDiagnostic.Fragment fragment) {
            return new JCDiagnostic.Fragment("compiler", "cant.resolve.location.args.params", kind, name, list, list2, fragment);
        }

        public static JCDiagnostic.Fragment DiamondInvalidArg(List<? extends Type> list, JCDiagnostic.Fragment fragment) {
            return new JCDiagnostic.Fragment("compiler", "diamond.invalid.arg", list, fragment);
        }

        public static JCDiagnostic.Fragment DiamondInvalidArgs(List<? extends Type> list, JCDiagnostic.Fragment fragment) {
            return new JCDiagnostic.Fragment("compiler", "diamond.invalid.args", list, fragment);
        }

        public static JCDiagnostic.Fragment InapplicableMethod(Kinds.Kind kind, Symbol symbol, Symbol symbol2, JCDiagnostic.Fragment fragment) {
            return new JCDiagnostic.Fragment("compiler", "inapplicable.method", kind, symbol, symbol2, fragment);
        }

        public static JCDiagnostic.Fragment IncompatibleTypeInConditional(JCDiagnostic.Fragment fragment) {
            return new JCDiagnostic.Fragment("compiler", "incompatible.type.in.conditional", fragment);
        }

        public static JCDiagnostic.Fragment InferNoConformingAssignmentExists(List<? extends Type> list, JCDiagnostic.Fragment fragment) {
            return new JCDiagnostic.Fragment("compiler", "infer.no.conforming.assignment.exists", list, fragment);
        }

        public static JCDiagnostic.Fragment InferVarargsArgumentMismatch(List<? extends Type> list, JCDiagnostic.Fragment fragment) {
            return new JCDiagnostic.Fragment("compiler", "infer.varargs.argument.mismatch", list, fragment);
        }

        public static JCDiagnostic.Fragment InvalidMref(Kinds.Kind kind, JCDiagnostic.Fragment fragment) {
            return new JCDiagnostic.Fragment("compiler", "invalid.mref", kind, fragment);
        }

        public static JCDiagnostic.Fragment Location(Kinds.Kind kind, Symbol symbol, Void r42) {
            return new JCDiagnostic.Fragment("compiler", "location", kind, symbol, r42);
        }

        public static JCDiagnostic.Fragment NoConformingAssignmentExists(JCDiagnostic.Fragment fragment) {
            return new JCDiagnostic.Fragment("compiler", "no.conforming.assignment.exists", fragment);
        }

        public static JCDiagnostic.Fragment NotAFunctionalIntf1(Symbol symbol, JCDiagnostic.Fragment fragment) {
            return new JCDiagnostic.Fragment("compiler", "not.a.functional.intf.1", symbol, fragment);
        }

        public static JCDiagnostic.Fragment NotAnIntfComponent(Type type) {
            return new JCDiagnostic.Fragment("compiler", "not.an.intf.component", type);
        }

        public static JCDiagnostic.Fragment NotApplicableMethodFound(int i10, Symbol symbol, JCDiagnostic.Fragment fragment) {
            return new JCDiagnostic.Fragment("compiler", "not.applicable.method.found", Integer.valueOf(i10), symbol, fragment);
        }

        public static JCDiagnostic.Fragment NotDefAccessClassIntfCantAccessReason(Symbol symbol, Symbol symbol2, Symbol symbol3, JCDiagnostic.Fragment fragment) {
            return new JCDiagnostic.Fragment("compiler", "not.def.access.class.intf.cant.access.reason", symbol, symbol2, symbol3, fragment);
        }

        public static JCDiagnostic.Fragment NotDefAccessPackageCantAccess(Symbol symbol, Symbol symbol2, JCDiagnostic.Fragment fragment) {
            return new JCDiagnostic.Fragment("compiler", "not.def.access.package.cant.access", symbol, symbol2, fragment);
        }

        public static JCDiagnostic.Fragment PackageNotVisible(Symbol symbol, JCDiagnostic.Fragment fragment) {
            return new JCDiagnostic.Fragment("compiler", "package.not.visible", symbol, fragment);
        }

        public static JCDiagnostic.Fragment ProbFoundReq(JCDiagnostic.Fragment fragment) {
            return new JCDiagnostic.Fragment("compiler", "prob.found.req", fragment);
        }

        public static JCDiagnostic.Fragment RedundantSupertype(Symbol symbol, Symbol symbol2) {
            return new JCDiagnostic.Fragment("compiler", "redundant.supertype", symbol, symbol2);
        }

        public static JCDiagnostic.Fragment VarargsArgumentMismatch(JCDiagnostic.Fragment fragment) {
            return new JCDiagnostic.Fragment("compiler", "varargs.argument.mismatch", fragment);
        }

        public static JCDiagnostic.Fragment VerboseParsingStarted(JavaFileObject javaFileObject) {
            return new JCDiagnostic.Fragment("compiler", "verbose.parsing.started", javaFileObject);
        }

        public static JCDiagnostic.Fragment VerboseWroteFile(JavaFileObject javaFileObject) {
            return new JCDiagnostic.Fragment("compiler", "verbose.wrote.file", javaFileObject);
        }

        public static JCDiagnostic.Fragment BadClassFileHeader(JavaFileObject javaFileObject, JCDiagnostic jCDiagnostic) {
            return new JCDiagnostic.Fragment("compiler", "bad.class.file.header", javaFileObject, jCDiagnostic);
        }

        public static JCDiagnostic.Fragment BadSourceFileHeader(JavaFileObject javaFileObject, JCDiagnostic jCDiagnostic) {
            return new JCDiagnostic.Fragment("compiler", "bad.source.file.header", javaFileObject, jCDiagnostic);
        }

        public static JCDiagnostic.Fragment CantApplyDiamond1(JCDiagnostic.Fragment fragment, JCDiagnostic jCDiagnostic) {
            return new JCDiagnostic.Fragment("compiler", "cant.apply.diamond.1", fragment, jCDiagnostic);
        }

        public static JCDiagnostic.Fragment CantApplySymbol(Kinds.Kind kind, Name name, List<? extends Type> list, JCDiagnostic jCDiagnostic, Kinds.Kind kind2, Type type, JCDiagnostic jCDiagnostic2) {
            return new JCDiagnostic.Fragment("compiler", "cant.apply.symbol", kind, name, list, jCDiagnostic, kind2, type, jCDiagnostic2);
        }

        public static JCDiagnostic.Fragment BadClassFileHeader(JavaFileObject javaFileObject, JCDiagnostic.Fragment fragment) {
            return new JCDiagnostic.Fragment("compiler", "bad.class.file.header", javaFileObject, fragment);
        }

        public static JCDiagnostic.Fragment BadSourceFileHeader(JavaFileObject javaFileObject, JCDiagnostic.Fragment fragment) {
            return new JCDiagnostic.Fragment("compiler", "bad.source.file.header", javaFileObject, fragment);
        }

        public static JCDiagnostic.Fragment CantApplyDiamond1(JCDiagnostic.Fragment fragment, JCDiagnostic.Fragment fragment2) {
            return new JCDiagnostic.Fragment("compiler", "cant.apply.diamond.1", fragment, fragment2);
        }

        public static JCDiagnostic.Fragment CantApplySymbol(Kinds.Kind kind, Name name, List<? extends Type> list, JCDiagnostic jCDiagnostic, Kinds.Kind kind2, Type type, JCDiagnostic.Fragment fragment) {
            return new JCDiagnostic.Fragment("compiler", "cant.apply.symbol", kind, name, list, jCDiagnostic, kind2, type, fragment);
        }

        public static JCDiagnostic.Fragment CantApplyDiamond1(Type type, JCDiagnostic jCDiagnostic) {
            return new JCDiagnostic.Fragment("compiler", "cant.apply.diamond.1", type, jCDiagnostic);
        }

        public static JCDiagnostic.Fragment CantApplySymbol(Kinds.Kind kind, Name name, List<? extends Type> list, JCDiagnostic.Fragment fragment, Kinds.Kind kind2, Type type, JCDiagnostic jCDiagnostic) {
            return new JCDiagnostic.Fragment("compiler", "cant.apply.symbol", kind, name, list, fragment, kind2, type, jCDiagnostic);
        }

        public static JCDiagnostic.Fragment CantApplyDiamond1(Type type, JCDiagnostic.Fragment fragment) {
            return new JCDiagnostic.Fragment("compiler", "cant.apply.diamond.1", type, fragment);
        }

        public static JCDiagnostic.Fragment CantApplySymbol(Kinds.Kind kind, Name name, List<? extends Type> list, JCDiagnostic.Fragment fragment, Kinds.Kind kind2, Type type, JCDiagnostic.Fragment fragment2) {
            return new JCDiagnostic.Fragment("compiler", "cant.apply.symbol", kind, name, list, fragment, kind2, type, fragment2);
        }

        public static JCDiagnostic.Fragment CantApplySymbol(Kinds.Kind kind, Name name, JCDiagnostic jCDiagnostic, List<? extends Type> list, Kinds.Kind kind2, Type type, JCDiagnostic jCDiagnostic2) {
            return new JCDiagnostic.Fragment("compiler", "cant.apply.symbol", kind, name, jCDiagnostic, list, kind2, type, jCDiagnostic2);
        }

        public static JCDiagnostic.Fragment CantApplySymbol(Kinds.Kind kind, Name name, JCDiagnostic jCDiagnostic, List<? extends Type> list, Kinds.Kind kind2, Type type, JCDiagnostic.Fragment fragment) {
            return new JCDiagnostic.Fragment("compiler", "cant.apply.symbol", kind, name, jCDiagnostic, list, kind2, type, fragment);
        }

        public static JCDiagnostic.Fragment CantApplySymbol(Kinds.Kind kind, Name name, JCDiagnostic jCDiagnostic, JCDiagnostic jCDiagnostic2, Kinds.Kind kind2, Type type, JCDiagnostic jCDiagnostic3) {
            return new JCDiagnostic.Fragment("compiler", "cant.apply.symbol", kind, name, jCDiagnostic, jCDiagnostic2, kind2, type, jCDiagnostic3);
        }

        public static JCDiagnostic.Fragment CantApplySymbol(Kinds.Kind kind, Name name, JCDiagnostic jCDiagnostic, JCDiagnostic jCDiagnostic2, Kinds.Kind kind2, Type type, JCDiagnostic.Fragment fragment) {
            return new JCDiagnostic.Fragment("compiler", "cant.apply.symbol", kind, name, jCDiagnostic, jCDiagnostic2, kind2, type, fragment);
        }

        public static JCDiagnostic.Fragment CantApplySymbol(Kinds.Kind kind, Name name, JCDiagnostic jCDiagnostic, JCDiagnostic.Fragment fragment, Kinds.Kind kind2, Type type, JCDiagnostic jCDiagnostic2) {
            return new JCDiagnostic.Fragment("compiler", "cant.apply.symbol", kind, name, jCDiagnostic, fragment, kind2, type, jCDiagnostic2);
        }

        public static JCDiagnostic.Fragment CantApplySymbol(Kinds.Kind kind, Name name, JCDiagnostic jCDiagnostic, JCDiagnostic.Fragment fragment, Kinds.Kind kind2, Type type, JCDiagnostic.Fragment fragment2) {
            return new JCDiagnostic.Fragment("compiler", "cant.apply.symbol", kind, name, jCDiagnostic, fragment, kind2, type, fragment2);
        }

        public static JCDiagnostic.Fragment CantApplySymbol(Kinds.Kind kind, Name name, JCDiagnostic.Fragment fragment, List<? extends Type> list, Kinds.Kind kind2, Type type, JCDiagnostic jCDiagnostic) {
            return new JCDiagnostic.Fragment("compiler", "cant.apply.symbol", kind, name, fragment, list, kind2, type, jCDiagnostic);
        }

        public static JCDiagnostic.Fragment CantApplySymbol(Kinds.Kind kind, Name name, JCDiagnostic.Fragment fragment, List<? extends Type> list, Kinds.Kind kind2, Type type, JCDiagnostic.Fragment fragment2) {
            return new JCDiagnostic.Fragment("compiler", "cant.apply.symbol", kind, name, fragment, list, kind2, type, fragment2);
        }

        public static JCDiagnostic.Fragment CantApplySymbol(Kinds.Kind kind, Name name, JCDiagnostic.Fragment fragment, JCDiagnostic jCDiagnostic, Kinds.Kind kind2, Type type, JCDiagnostic jCDiagnostic2) {
            return new JCDiagnostic.Fragment("compiler", "cant.apply.symbol", kind, name, fragment, jCDiagnostic, kind2, type, jCDiagnostic2);
        }

        public static JCDiagnostic.Fragment CantApplySymbol(Kinds.Kind kind, Name name, JCDiagnostic.Fragment fragment, JCDiagnostic jCDiagnostic, Kinds.Kind kind2, Type type, JCDiagnostic.Fragment fragment2) {
            return new JCDiagnostic.Fragment("compiler", "cant.apply.symbol", kind, name, fragment, jCDiagnostic, kind2, type, fragment2);
        }

        public static JCDiagnostic.Fragment CantApplySymbol(Kinds.Kind kind, Name name, JCDiagnostic.Fragment fragment, JCDiagnostic.Fragment fragment2, Kinds.Kind kind2, Type type, JCDiagnostic jCDiagnostic) {
            return new JCDiagnostic.Fragment("compiler", "cant.apply.symbol", kind, name, fragment, fragment2, kind2, type, jCDiagnostic);
        }

        public static JCDiagnostic.Fragment CantApplySymbol(Kinds.Kind kind, Name name, JCDiagnostic.Fragment fragment, JCDiagnostic.Fragment fragment2, Kinds.Kind kind2, Type type, JCDiagnostic.Fragment fragment3) {
            return new JCDiagnostic.Fragment("compiler", "cant.apply.symbol", kind, name, fragment, fragment2, kind2, type, fragment3);
        }
    }

    public static class Notes {
        public static final JCDiagnostic.Note CompressedDiags = new JCDiagnostic.Note("compiler", "compressed.diags", new Object[0]);
        public static final JCDiagnostic.Note DeprecatedPlural = new JCDiagnostic.Note("compiler", "deprecated.plural", new Object[0]);
        public static final JCDiagnostic.Note DeprecatedPluralAdditional = new JCDiagnostic.Note("compiler", "deprecated.plural.additional", new Object[0]);
        public static final JCDiagnostic.Note DeprecatedRecompile = new JCDiagnostic.Note("compiler", "deprecated.recompile", new Object[0]);
        public static final JCDiagnostic.Note Note = new JCDiagnostic.Note("compiler", "note", new Object[0]);
        public static final JCDiagnostic.Note RemovalPlural = new JCDiagnostic.Note("compiler", "removal.plural", new Object[0]);
        public static final JCDiagnostic.Note RemovalPluralAdditional = new JCDiagnostic.Note("compiler", "removal.plural.additional", new Object[0]);
        public static final JCDiagnostic.Note RemovalRecompile = new JCDiagnostic.Note("compiler", "removal.recompile", new Object[0]);
        public static final JCDiagnostic.Note UncheckedPlural = new JCDiagnostic.Note("compiler", "unchecked.plural", new Object[0]);
        public static final JCDiagnostic.Note UncheckedPluralAdditional = new JCDiagnostic.Note("compiler", "unchecked.plural.additional", new Object[0]);
        public static final JCDiagnostic.Note UncheckedRecompile = new JCDiagnostic.Note("compiler", "unchecked.recompile", new Object[0]);

        public static JCDiagnostic.Note DeferredMethodInst(Symbol symbol, Type type, Type type2) {
            return new JCDiagnostic.Note("compiler", "deferred.method.inst", symbol, type, type2);
        }

        public static JCDiagnostic.Note DeprecatedFilename(File file) {
            return new JCDiagnostic.Note("compiler", "deprecated.filename", file);
        }

        public static JCDiagnostic.Note DeprecatedFilenameAdditional(File file) {
            return new JCDiagnostic.Note("compiler", "deprecated.filename.additional", file);
        }

        public static JCDiagnostic.Note LambdaStat(boolean z10, Symbol symbol) {
            return new JCDiagnostic.Note("compiler", "lambda.stat", Boolean.valueOf(z10), symbol);
        }

        public static JCDiagnostic.Note MrefStat(boolean z10, Void r32) {
            return new JCDiagnostic.Note("compiler", "mref.stat", Boolean.valueOf(z10), r32);
        }

        public static JCDiagnostic.Note MrefStat1(boolean z10, Symbol symbol) {
            return new JCDiagnostic.Note("compiler", "mref.stat.1", Boolean.valueOf(z10), symbol);
        }

        public static JCDiagnostic.Note MultipleElements(String str, String str2, String str3) {
            return new JCDiagnostic.Note("compiler", "multiple.elements", str, str2, str3);
        }

        public static JCDiagnostic.Note ProcMessager(String str) {
            return new JCDiagnostic.Note("compiler", "proc.messager", str);
        }

        public static JCDiagnostic.Note RemovalFilename(File file) {
            return new JCDiagnostic.Note("compiler", "removal.filename", file);
        }

        public static JCDiagnostic.Note RemovalFilenameAdditional(File file) {
            return new JCDiagnostic.Note("compiler", "removal.filename.additional", file);
        }

        public static JCDiagnostic.Note UncheckedFilename(File file) {
            return new JCDiagnostic.Note("compiler", "unchecked.filename", file);
        }

        public static JCDiagnostic.Note UncheckedFilenameAdditional(File file) {
            return new JCDiagnostic.Note("compiler", "unchecked.filename.additional", file);
        }

        public static JCDiagnostic.Note VerboseResolveMulti(Name name, Symbol symbol, int i10, String str, List<? extends Type> list, List<? extends Type> list2) {
            return new JCDiagnostic.Note("compiler", "verbose.resolve.multi", name, symbol, Integer.valueOf(i10), str, list, list2);
        }

        public static JCDiagnostic.Note VerboseResolveMulti1(Name name, Symbol symbol, Void r42, String str, List<? extends Type> list, List<? extends Type> list2) {
            return new JCDiagnostic.Note("compiler", "verbose.resolve.multi.1", name, symbol, r42, str, list, list2);
        }

        public static JCDiagnostic.Note DeprecatedFilename(JavaFileObject javaFileObject) {
            return new JCDiagnostic.Note("compiler", "deprecated.filename", javaFileObject);
        }

        public static JCDiagnostic.Note DeprecatedFilenameAdditional(JavaFileObject javaFileObject) {
            return new JCDiagnostic.Note("compiler", "deprecated.filename.additional", javaFileObject);
        }

        public static JCDiagnostic.Note RemovalFilename(JavaFileObject javaFileObject) {
            return new JCDiagnostic.Note("compiler", "removal.filename", javaFileObject);
        }

        public static JCDiagnostic.Note RemovalFilenameAdditional(JavaFileObject javaFileObject) {
            return new JCDiagnostic.Note("compiler", "removal.filename.additional", javaFileObject);
        }

        public static JCDiagnostic.Note UncheckedFilename(JavaFileObject javaFileObject) {
            return new JCDiagnostic.Note("compiler", "unchecked.filename", javaFileObject);
        }

        public static JCDiagnostic.Note UncheckedFilenameAdditional(JavaFileObject javaFileObject) {
            return new JCDiagnostic.Note("compiler", "unchecked.filename.additional", javaFileObject);
        }

        public static JCDiagnostic.Note VerboseResolveMulti(Name name, Symbol symbol, int i10, String str, List<? extends Type> list, JCDiagnostic jCDiagnostic) {
            return new JCDiagnostic.Note("compiler", "verbose.resolve.multi", name, symbol, Integer.valueOf(i10), str, list, jCDiagnostic);
        }

        public static JCDiagnostic.Note VerboseResolveMulti1(Name name, Symbol symbol, Void r42, String str, List<? extends Type> list, JCDiagnostic jCDiagnostic) {
            return new JCDiagnostic.Note("compiler", "verbose.resolve.multi.1", name, symbol, r42, str, list, jCDiagnostic);
        }

        public static JCDiagnostic.Note VerboseResolveMulti(Name name, Symbol symbol, int i10, String str, List<? extends Type> list, JCDiagnostic.Fragment fragment) {
            return new JCDiagnostic.Note("compiler", "verbose.resolve.multi", name, symbol, Integer.valueOf(i10), str, list, fragment);
        }

        public static JCDiagnostic.Note VerboseResolveMulti1(Name name, Symbol symbol, Void r42, String str, List<? extends Type> list, JCDiagnostic.Fragment fragment) {
            return new JCDiagnostic.Note("compiler", "verbose.resolve.multi.1", name, symbol, r42, str, list, fragment);
        }

        public static JCDiagnostic.Note VerboseResolveMulti(Name name, Symbol symbol, int i10, String str, JCDiagnostic jCDiagnostic, List<? extends Type> list) {
            return new JCDiagnostic.Note("compiler", "verbose.resolve.multi", name, symbol, Integer.valueOf(i10), str, jCDiagnostic, list);
        }

        public static JCDiagnostic.Note VerboseResolveMulti1(Name name, Symbol symbol, Void r42, String str, JCDiagnostic jCDiagnostic, List<? extends Type> list) {
            return new JCDiagnostic.Note("compiler", "verbose.resolve.multi.1", name, symbol, r42, str, jCDiagnostic, list);
        }

        public static JCDiagnostic.Note VerboseResolveMulti(Name name, Symbol symbol, int i10, String str, JCDiagnostic jCDiagnostic, JCDiagnostic jCDiagnostic2) {
            return new JCDiagnostic.Note("compiler", "verbose.resolve.multi", name, symbol, Integer.valueOf(i10), str, jCDiagnostic, jCDiagnostic2);
        }

        public static JCDiagnostic.Note VerboseResolveMulti1(Name name, Symbol symbol, Void r42, String str, JCDiagnostic jCDiagnostic, JCDiagnostic jCDiagnostic2) {
            return new JCDiagnostic.Note("compiler", "verbose.resolve.multi.1", name, symbol, r42, str, jCDiagnostic, jCDiagnostic2);
        }

        public static JCDiagnostic.Note VerboseResolveMulti(Name name, Symbol symbol, int i10, String str, JCDiagnostic jCDiagnostic, JCDiagnostic.Fragment fragment) {
            return new JCDiagnostic.Note("compiler", "verbose.resolve.multi", name, symbol, Integer.valueOf(i10), str, jCDiagnostic, fragment);
        }

        public static JCDiagnostic.Note VerboseResolveMulti1(Name name, Symbol symbol, Void r42, String str, JCDiagnostic jCDiagnostic, JCDiagnostic.Fragment fragment) {
            return new JCDiagnostic.Note("compiler", "verbose.resolve.multi.1", name, symbol, r42, str, jCDiagnostic, fragment);
        }

        public static JCDiagnostic.Note VerboseResolveMulti(Name name, Symbol symbol, int i10, String str, JCDiagnostic.Fragment fragment, List<? extends Type> list) {
            return new JCDiagnostic.Note("compiler", "verbose.resolve.multi", name, symbol, Integer.valueOf(i10), str, fragment, list);
        }

        public static JCDiagnostic.Note VerboseResolveMulti1(Name name, Symbol symbol, Void r42, String str, JCDiagnostic.Fragment fragment, List<? extends Type> list) {
            return new JCDiagnostic.Note("compiler", "verbose.resolve.multi.1", name, symbol, r42, str, fragment, list);
        }

        public static JCDiagnostic.Note VerboseResolveMulti(Name name, Symbol symbol, int i10, String str, JCDiagnostic.Fragment fragment, JCDiagnostic jCDiagnostic) {
            return new JCDiagnostic.Note("compiler", "verbose.resolve.multi", name, symbol, Integer.valueOf(i10), str, fragment, jCDiagnostic);
        }

        public static JCDiagnostic.Note VerboseResolveMulti1(Name name, Symbol symbol, Void r42, String str, JCDiagnostic.Fragment fragment, JCDiagnostic jCDiagnostic) {
            return new JCDiagnostic.Note("compiler", "verbose.resolve.multi.1", name, symbol, r42, str, fragment, jCDiagnostic);
        }

        public static JCDiagnostic.Note VerboseResolveMulti(Name name, Symbol symbol, int i10, String str, JCDiagnostic.Fragment fragment, JCDiagnostic.Fragment fragment2) {
            return new JCDiagnostic.Note("compiler", "verbose.resolve.multi", name, symbol, Integer.valueOf(i10), str, fragment, fragment2);
        }

        public static JCDiagnostic.Note VerboseResolveMulti1(Name name, Symbol symbol, Void r42, String str, JCDiagnostic.Fragment fragment, JCDiagnostic.Fragment fragment2) {
            return new JCDiagnostic.Note("compiler", "verbose.resolve.multi.1", name, symbol, r42, str, fragment, fragment2);
        }
    }

    public static class Warnings {
        public static final JCDiagnostic.Warning AddopensIgnored = new JCDiagnostic.Warning("compiler", "addopens.ignored", new Object[0]);
        public static final JCDiagnostic.Warning AnnotationMethodNotFound = new JCDiagnostic.Warning("compiler", "annotation.method.not.found", new Object[0]);
        public static final JCDiagnostic.Warning AnnotationMethodNotFoundReason = new JCDiagnostic.Warning("compiler", "annotation.method.not.found.reason", new Object[0]);
        public static final JCDiagnostic.Warning DivZero = new JCDiagnostic.Warning("compiler", "div.zero", new Object[0]);
        public static final JCDiagnostic.Warning EmptyIf = new JCDiagnostic.Warning("compiler", "empty.if", new Object[0]);
        public static final JCDiagnostic.Warning FinallyCannotComplete = new JCDiagnostic.Warning("compiler", "finally.cannot.complete", new Object[0]);
        public static final JCDiagnostic.Warning IllegalCharForEncoding = new JCDiagnostic.Warning("compiler", "illegal.char.for.encoding", new Object[0]);
        public static final JCDiagnostic.Warning InvalidArchiveFile = new JCDiagnostic.Warning("compiler", "invalid.archive.file", new Object[0]);
        public static final JCDiagnostic.Warning InvalidPath = new JCDiagnostic.Warning("compiler", "invalid.path", new Object[0]);
        public static final JCDiagnostic.Warning MethodRedundantTypeargs = new JCDiagnostic.Warning("compiler", "method.redundant.typeargs", new Object[0]);
        public static final JCDiagnostic.Warning MissingDeprecatedAnnotation = new JCDiagnostic.Warning("compiler", "missing.deprecated.annotation", new Object[0]);
        public static final JCDiagnostic.Warning OptionObsoleteSuppression = new JCDiagnostic.Warning("compiler", "option.obsolete.suppression", new Object[0]);
        public static final JCDiagnostic.Warning OverrideBridge = new JCDiagnostic.Warning("compiler", "override.bridge", new Object[0]);
        public static final JCDiagnostic.Warning PossibleFallThroughIntoCase = new JCDiagnostic.Warning("compiler", "possible.fall-through.into.case", new Object[0]);
        public static final JCDiagnostic.Warning PotentialLambdaFound = new JCDiagnostic.Warning("compiler", "potential.lambda.found", new Object[0]);
        public static final JCDiagnostic.Warning ProcProcOnlyRequestedNoProcs = new JCDiagnostic.Warning("compiler", "proc.proc-only.requested.no.procs", new Object[0]);
        public static final JCDiagnostic.Warning ProcUseImplicit = new JCDiagnostic.Warning("compiler", "proc.use.implicit", new Object[0]);
        public static final JCDiagnostic.Warning ProcUseProcOrImplicit = new JCDiagnostic.Warning("compiler", "proc.use.proc.or.implicit", new Object[0]);
        public static final JCDiagnostic.Warning RequiresAutomatic = new JCDiagnostic.Warning("compiler", "requires.automatic", new Object[0]);
        public static final JCDiagnostic.Warning RequiresTransitiveAutomatic = new JCDiagnostic.Warning("compiler", "requires.transitive.automatic", new Object[0]);
        public static final JCDiagnostic.Warning TryExplicitCloseCall = new JCDiagnostic.Warning("compiler", "try.explicit.close.call", new Object[0]);
        public static final JCDiagnostic.Warning UncheckedAssign = new JCDiagnostic.Warning("compiler", "unchecked.assign", new Object[0]);
        public static final JCDiagnostic.Warning UncheckedCastToType = new JCDiagnostic.Warning("compiler", "unchecked.cast.to.type", new Object[0]);
        public static final JCDiagnostic.Warning UnderscoreAsIdentifier = new JCDiagnostic.Warning("compiler", "underscore.as.identifier", new Object[0]);
        public static final JCDiagnostic.Warning UnexpectedArchiveFile = new JCDiagnostic.Warning("compiler", "unexpected.archive.file", new Object[0]);
        public static final JCDiagnostic.Warning Warning = new JCDiagnostic.Warning("compiler", "warning", new Object[0]);

        public static JCDiagnostic.Warning AccessToMemberFromSerializableElement(Symbol symbol) {
            return new JCDiagnostic.Warning("compiler", "access.to.member.from.serializable.element", symbol);
        }

        public static JCDiagnostic.Warning AccessToMemberFromSerializableLambda(Symbol symbol) {
            return new JCDiagnostic.Warning("compiler", "access.to.member.from.serializable.lambda", symbol);
        }

        public static JCDiagnostic.Warning AuxiliaryClassAccessedFromOutsideOfItsSourceFile(Symbol symbol, File file) {
            return new JCDiagnostic.Warning("compiler", "auxiliary.class.accessed.from.outside.of.its.source.file", symbol, file);
        }

        public static JCDiagnostic.Warning BadNameForOption(Option option, String str) {
            return new JCDiagnostic.Warning("compiler", "bad.name.for.option", option, str);
        }

        public static JCDiagnostic.Warning BigMajorVersion(File file, int i10, int i11) {
            return new JCDiagnostic.Warning("compiler", "big.major.version", file, Integer.valueOf(i10), Integer.valueOf(i11));
        }

        public static JCDiagnostic.Warning ConstantSVUID(Symbol symbol) {
            return new JCDiagnostic.Warning("compiler", "constant.SVUID", symbol);
        }

        public static JCDiagnostic.Warning DeprecatedAnnotationHasNoEffect(Kinds.Kind kind) {
            return new JCDiagnostic.Warning("compiler", "deprecated.annotation.has.no.effect", kind);
        }

        public static JCDiagnostic.Warning DiamondRedundantArgs(Void r22, Void r32) {
            return new JCDiagnostic.Warning("compiler", "diamond.redundant.args", r22, r32);
        }

        public static JCDiagnostic.Warning DirPathElementNotDirectory(File file) {
            return new JCDiagnostic.Warning("compiler", "dir.path.element.not.directory", file);
        }

        public static JCDiagnostic.Warning DirPathElementNotFound(File file) {
            return new JCDiagnostic.Warning("compiler", "dir.path.element.not.found", file);
        }

        public static JCDiagnostic.Warning FileFromFuture(File file) {
            return new JCDiagnostic.Warning("compiler", "file.from.future", file);
        }

        public static JCDiagnostic.Warning ForwardRef(Symbol symbol) {
            return new JCDiagnostic.Warning("compiler", "forward.ref", symbol);
        }

        public static JCDiagnostic.Warning FutureAttr(Name name, int i10, int i11, int i12, int i13) {
            return new JCDiagnostic.Warning("compiler", "future.attr", name, Integer.valueOf(i10), Integer.valueOf(i11), Integer.valueOf(i12), Integer.valueOf(i13));
        }

        public static JCDiagnostic.Warning HasBeenDeprecated(Symbol symbol, Symbol symbol2) {
            return new JCDiagnostic.Warning("compiler", "has.been.deprecated", symbol, symbol2);
        }

        public static JCDiagnostic.Warning HasBeenDeprecatedForRemoval(Symbol symbol, Symbol symbol2) {
            return new JCDiagnostic.Warning("compiler", "has.been.deprecated.for.removal", symbol, symbol2);
        }

        public static JCDiagnostic.Warning HasBeenDeprecatedForRemovalModule(Symbol symbol) {
            return new JCDiagnostic.Warning("compiler", "has.been.deprecated.for.removal.module", symbol);
        }

        public static JCDiagnostic.Warning HasBeenDeprecatedModule(Symbol symbol) {
            return new JCDiagnostic.Warning("compiler", "has.been.deprecated.module", symbol);
        }

        public static JCDiagnostic.Warning ImproperSVUID(Symbol symbol) {
            return new JCDiagnostic.Warning("compiler", "improper.SVUID", symbol);
        }

        public static JCDiagnostic.Warning IncubatingModules(String str) {
            return new JCDiagnostic.Warning("compiler", "incubating.modules", str);
        }

        public static JCDiagnostic.Warning InexactNonVarargsCall(Type type, Type type2) {
            return new JCDiagnostic.Warning("compiler", "inexact.non-varargs.call", type, type2);
        }

        public static JCDiagnostic.Warning LeaksNotAccessible(Kinds.KindName kindName, Symbol symbol, Symbol symbol2) {
            return new JCDiagnostic.Warning("compiler", "leaks.not.accessible", kindName, symbol, symbol2);
        }

        public static JCDiagnostic.Warning LeaksNotAccessibleNotRequiredTransitive(Kinds.KindName kindName, Symbol symbol, Symbol symbol2) {
            return new JCDiagnostic.Warning("compiler", "leaks.not.accessible.not.required.transitive", kindName, symbol, symbol2);
        }

        public static JCDiagnostic.Warning LeaksNotAccessibleUnexported(Kinds.KindName kindName, Symbol symbol, Symbol symbol2) {
            return new JCDiagnostic.Warning("compiler", "leaks.not.accessible.unexported", kindName, symbol, symbol2);
        }

        public static JCDiagnostic.Warning LeaksNotAccessibleUnexportedQualified(Kinds.KindName kindName, Symbol symbol, Symbol symbol2) {
            return new JCDiagnostic.Warning("compiler", "leaks.not.accessible.unexported.qualified", kindName, symbol, symbol2);
        }

        public static JCDiagnostic.Warning LintOption(Option option) {
            return new JCDiagnostic.Warning("compiler", "lintOption", option);
        }

        public static JCDiagnostic.Warning LocnUnknownFileOnModulePath(Path path) {
            return new JCDiagnostic.Warning("compiler", "locn.unknown.file.on.module.path", path);
        }

        public static JCDiagnostic.Warning LongSVUID(Symbol symbol) {
            return new JCDiagnostic.Warning("compiler", "long.SVUID", symbol);
        }

        public static JCDiagnostic.Warning MissingSVUID(Symbol symbol) {
            return new JCDiagnostic.Warning("compiler", "missing.SVUID", symbol);
        }

        public static JCDiagnostic.Warning ModuleForOptionNotFound(Option option, Symbol symbol) {
            return new JCDiagnostic.Warning("compiler", "module.for.option.not.found", option, symbol);
        }

        public static JCDiagnostic.Warning ModuleNotFound(Symbol symbol) {
            return new JCDiagnostic.Warning("compiler", "module.not.found", symbol);
        }

        public static JCDiagnostic.Warning OptionObsoleteSource(String str) {
            return new JCDiagnostic.Warning("compiler", "option.obsolete.source", str);
        }

        public static JCDiagnostic.Warning OptionObsoleteTarget(String str) {
            return new JCDiagnostic.Warning("compiler", "option.obsolete.target", str);
        }

        public static JCDiagnostic.Warning OutdirIsInExplodedModule(Path path) {
            return new JCDiagnostic.Warning("compiler", "outdir.is.in.exploded.module", path);
        }

        public static JCDiagnostic.Warning OverrideEqualsButNotHashcode(Symbol symbol) {
            return new JCDiagnostic.Warning("compiler", "override.equals.but.not.hashcode", symbol);
        }

        public static JCDiagnostic.Warning OverrideUncheckedRet(JCDiagnostic jCDiagnostic, Type type, Type type2) {
            return new JCDiagnostic.Warning("compiler", "override.unchecked.ret", jCDiagnostic, type, type2);
        }

        public static JCDiagnostic.Warning OverrideUncheckedThrown(JCDiagnostic jCDiagnostic, Type type) {
            return new JCDiagnostic.Warning("compiler", "override.unchecked.thrown", jCDiagnostic, type);
        }

        public static JCDiagnostic.Warning OverrideVarargsExtra(JCDiagnostic jCDiagnostic) {
            return new JCDiagnostic.Warning("compiler", "override.varargs.extra", jCDiagnostic);
        }

        public static JCDiagnostic.Warning OverrideVarargsMissing(JCDiagnostic jCDiagnostic) {
            return new JCDiagnostic.Warning("compiler", "override.varargs.missing", jCDiagnostic);
        }

        public static JCDiagnostic.Warning PackageEmptyOrNotFound(Symbol symbol) {
            return new JCDiagnostic.Warning("compiler", "package.empty.or.not.found", symbol);
        }

        public static JCDiagnostic.Warning PathElementNotFound(File file) {
            return new JCDiagnostic.Warning("compiler", "path.element.not.found", file);
        }

        public static JCDiagnostic.Warning PkgInfoAlreadySeen(Symbol symbol) {
            return new JCDiagnostic.Warning("compiler", "pkg-info.already.seen", symbol);
        }

        public static JCDiagnostic.Warning PoorChoiceForModuleName(Name name) {
            return new JCDiagnostic.Warning("compiler", "poor.choice.for.module.name", name);
        }

        public static JCDiagnostic.Warning PositionOverflow(int i10) {
            return new JCDiagnostic.Warning("compiler", "position.overflow", Integer.valueOf(i10));
        }

        public static JCDiagnostic.Warning PotentiallyAmbiguousOverload(Symbol symbol, Symbol symbol2, Symbol symbol3, Symbol symbol4) {
            return new JCDiagnostic.Warning("compiler", "potentially.ambiguous.overload", symbol, symbol2, symbol3, symbol4);
        }

        public static JCDiagnostic.Warning ProbFoundReq(JCDiagnostic jCDiagnostic, Type type, Type type2) {
            return new JCDiagnostic.Warning("compiler", "prob.found.req", jCDiagnostic, type, type2);
        }

        public static JCDiagnostic.Warning ProcAnnotationsWithoutProcessors(Set<? extends String> set) {
            return new JCDiagnostic.Warning("compiler", "proc.annotations.without.processors", set);
        }

        public static JCDiagnostic.Warning ProcFileCreateLastRound(Name name) {
            return new JCDiagnostic.Warning("compiler", "proc.file.create.last.round", name);
        }

        public static JCDiagnostic.Warning ProcFileReopening(Name name) {
            return new JCDiagnostic.Warning("compiler", "proc.file.reopening", name);
        }

        public static JCDiagnostic.Warning ProcIllegalFileName(String str) {
            return new JCDiagnostic.Warning("compiler", "proc.illegal.file.name", str);
        }

        public static JCDiagnostic.Warning ProcMalformedSupportedString(String str, String str2) {
            return new JCDiagnostic.Warning("compiler", "proc.malformed.supported.string", str, str2);
        }

        public static JCDiagnostic.Warning ProcMessager(String str) {
            return new JCDiagnostic.Warning("compiler", "proc.messager", str);
        }

        public static JCDiagnostic.Warning ProcPackageDoesNotExist(String str) {
            return new JCDiagnostic.Warning("compiler", "proc.package.does.not.exist", str);
        }

        public static JCDiagnostic.Warning ProcProcessorIncompatibleSourceVersion(Source source, String str, String str2) {
            return new JCDiagnostic.Warning("compiler", "proc.processor.incompatible.source.version", source, str, str2);
        }

        public static JCDiagnostic.Warning ProcSuspiciousClassName(String str, String str2) {
            return new JCDiagnostic.Warning("compiler", "proc.suspicious.class.name", str, str2);
        }

        public static JCDiagnostic.Warning ProcTypeAlreadyExists(Name name) {
            return new JCDiagnostic.Warning("compiler", "proc.type.already.exists", name);
        }

        public static JCDiagnostic.Warning ProcTypeRecreate(Name name) {
            return new JCDiagnostic.Warning("compiler", "proc.type.recreate", name);
        }

        public static JCDiagnostic.Warning ProcUnclosedTypeFiles(Set<? extends Name> set) {
            return new JCDiagnostic.Warning("compiler", "proc.unclosed.type.files", set);
        }

        public static JCDiagnostic.Warning ProcUnmatchedProcessorOptions(String str) {
            return new JCDiagnostic.Warning("compiler", "proc.unmatched.processor.options", str);
        }

        public static JCDiagnostic.Warning RawClassUse(Type type, Type type2) {
            return new JCDiagnostic.Warning("compiler", "raw.class.use", type, type2);
        }

        public static JCDiagnostic.Warning RedundantCast(Type type) {
            return new JCDiagnostic.Warning("compiler", "redundant.cast", type);
        }

        public static JCDiagnostic.Warning SelfRef(Symbol symbol) {
            return new JCDiagnostic.Warning("compiler", "self.ref", symbol);
        }

        public static JCDiagnostic.Warning ServiceProvidedButNotExportedOrUsed(Symbol symbol) {
            return new JCDiagnostic.Warning("compiler", "service.provided.but.not.exported.or.used", symbol);
        }

        public static JCDiagnostic.Warning SourceNoBootclasspath(String str) {
            return new JCDiagnostic.Warning("compiler", "source.no.bootclasspath", str);
        }

        public static JCDiagnostic.Warning StaticNotQualifiedByType(Kinds.Kind kind, Symbol symbol) {
            return new JCDiagnostic.Warning("compiler", "static.not.qualified.by.type", kind, symbol);
        }

        public static JCDiagnostic.Warning SunProprietary(Symbol symbol) {
            return new JCDiagnostic.Warning("compiler", "sun.proprietary", symbol);
        }

        public static JCDiagnostic.Warning TryResourceNotReferenced(Symbol symbol) {
            return new JCDiagnostic.Warning("compiler", "try.resource.not.referenced", symbol);
        }

        public static JCDiagnostic.Warning TryResourceThrowsInterruptedExc(Type type) {
            return new JCDiagnostic.Warning("compiler", "try.resource.throws.interrupted.exc", type);
        }

        public static JCDiagnostic.Warning UncheckedAssignToVar(Symbol symbol, Type type) {
            return new JCDiagnostic.Warning("compiler", "unchecked.assign.to.var", symbol, type);
        }

        public static JCDiagnostic.Warning UncheckedCallMbrOfRawType(Symbol symbol, Type type) {
            return new JCDiagnostic.Warning("compiler", "unchecked.call.mbr.of.raw.type", symbol, type);
        }

        public static JCDiagnostic.Warning UncheckedGenericArrayCreation(Type type) {
            return new JCDiagnostic.Warning("compiler", "unchecked.generic.array.creation", type);
        }

        public static JCDiagnostic.Warning UncheckedMethInvocationApplied(Kinds.Kind kind, Name name, List<? extends Type> list, List<? extends Type> list2, Kinds.Kind kind2, Symbol symbol) {
            return new JCDiagnostic.Warning("compiler", "unchecked.meth.invocation.applied", kind, name, list, list2, kind2, symbol);
        }

        public static JCDiagnostic.Warning UncheckedVarargsNonReifiableType(Type type) {
            return new JCDiagnostic.Warning("compiler", "unchecked.varargs.non.reifiable.type", type);
        }

        public static JCDiagnostic.Warning UnknownEnumConstant(Symbol symbol, Name name) {
            return new JCDiagnostic.Warning("compiler", "unknown.enum.constant", symbol, name);
        }

        public static JCDiagnostic.Warning UnknownEnumConstantReason(Symbol symbol, Name name, JCDiagnostic jCDiagnostic) {
            return new JCDiagnostic.Warning("compiler", "unknown.enum.constant.reason", symbol, name, jCDiagnostic);
        }

        public static JCDiagnostic.Warning UnreachableCatch(List<? extends Type> list) {
            return new JCDiagnostic.Warning("compiler", "unreachable.catch", list);
        }

        public static JCDiagnostic.Warning UnreachableCatch1(List<? extends Type> list) {
            return new JCDiagnostic.Warning("compiler", "unreachable.catch.1", list);
        }

        public static JCDiagnostic.Warning VarargsRedundantTrustmeAnno(Symbol symbol, JCDiagnostic jCDiagnostic) {
            return new JCDiagnostic.Warning("compiler", "varargs.redundant.trustme.anno", symbol, jCDiagnostic);
        }

        public static JCDiagnostic.Warning VarargsUnsafeUseVarargsParam(Symbol symbol) {
            return new JCDiagnostic.Warning("compiler", "varargs.unsafe.use.varargs.param", symbol);
        }

        public static JCDiagnostic.Warning AuxiliaryClassAccessedFromOutsideOfItsSourceFile(Symbol symbol, JavaFileObject javaFileObject) {
            return new JCDiagnostic.Warning("compiler", "auxiliary.class.accessed.from.outside.of.its.source.file", symbol, javaFileObject);
        }

        public static JCDiagnostic.Warning BigMajorVersion(JavaFileObject javaFileObject, int i10, int i11) {
            return new JCDiagnostic.Warning("compiler", "big.major.version", javaFileObject, Integer.valueOf(i10), Integer.valueOf(i11));
        }

        public static JCDiagnostic.Warning DirPathElementNotDirectory(JavaFileObject javaFileObject) {
            return new JCDiagnostic.Warning("compiler", "dir.path.element.not.directory", javaFileObject);
        }

        public static JCDiagnostic.Warning DirPathElementNotFound(JavaFileObject javaFileObject) {
            return new JCDiagnostic.Warning("compiler", "dir.path.element.not.found", javaFileObject);
        }

        public static JCDiagnostic.Warning FileFromFuture(JavaFileObject javaFileObject) {
            return new JCDiagnostic.Warning("compiler", "file.from.future", javaFileObject);
        }

        public static JCDiagnostic.Warning OverrideUncheckedRet(JCDiagnostic.Fragment fragment, Type type, Type type2) {
            return new JCDiagnostic.Warning("compiler", "override.unchecked.ret", fragment, type, type2);
        }

        public static JCDiagnostic.Warning OverrideUncheckedThrown(JCDiagnostic.Fragment fragment, Type type) {
            return new JCDiagnostic.Warning("compiler", "override.unchecked.thrown", fragment, type);
        }

        public static JCDiagnostic.Warning OverrideVarargsExtra(JCDiagnostic.Fragment fragment) {
            return new JCDiagnostic.Warning("compiler", "override.varargs.extra", fragment);
        }

        public static JCDiagnostic.Warning OverrideVarargsMissing(JCDiagnostic.Fragment fragment) {
            return new JCDiagnostic.Warning("compiler", "override.varargs.missing", fragment);
        }

        public static JCDiagnostic.Warning PathElementNotFound(JavaFileObject javaFileObject) {
            return new JCDiagnostic.Warning("compiler", "path.element.not.found", javaFileObject);
        }

        public static JCDiagnostic.Warning ProbFoundReq(JCDiagnostic.Fragment fragment, Type type, Type type2) {
            return new JCDiagnostic.Warning("compiler", "prob.found.req", fragment, type, type2);
        }

        public static JCDiagnostic.Warning UnknownEnumConstantReason(Symbol symbol, Name name, JCDiagnostic.Fragment fragment) {
            return new JCDiagnostic.Warning("compiler", "unknown.enum.constant.reason", symbol, name, fragment);
        }

        public static JCDiagnostic.Warning VarargsRedundantTrustmeAnno(Symbol symbol, JCDiagnostic.Fragment fragment) {
            return new JCDiagnostic.Warning("compiler", "varargs.redundant.trustme.anno", symbol, fragment);
        }

        public static JCDiagnostic.Warning AuxiliaryClassAccessedFromOutsideOfItsSourceFile(Type type, File file) {
            return new JCDiagnostic.Warning("compiler", "auxiliary.class.accessed.from.outside.of.its.source.file", type, file);
        }

        public static JCDiagnostic.Warning AuxiliaryClassAccessedFromOutsideOfItsSourceFile(Type type, JavaFileObject javaFileObject) {
            return new JCDiagnostic.Warning("compiler", "auxiliary.class.accessed.from.outside.of.its.source.file", type, javaFileObject);
        }
    }
}
