.class public final Lorg/openjdk/tools/doclint/resources/doclint;
.super Ljava/util/ListResourceBundle;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/util/ListResourceBundle;-><init>()V

    return-void
.end method


# virtual methods
.method public final getContents()[[Ljava/lang/Object;
    .locals 63

    const-string v0, "dc.anchor.already.defined"

    const-string v1, "anchor already defined: \"{0}\""

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v2

    const-string v0, "dc.anchor.value.missing"

    const-string v1, "no value given for anchor"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v3

    const-string v0, "dc.attr.lacks.value"

    const-string v1, "attribute lacks value"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v4

    const-string v0, "dc.attr.not.number"

    const-string v1, "attribute value is not a number"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v5

    const-string v0, "dc.attr.not.supported.html4"

    const-string v1, "attribute not supported in HTML4: {0}"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v6

    const-string v0, "dc.attr.not.supported.html5"

    const-string v1, "attribute not supported in HTML5: {0}"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v7

    const-string v0, "dc.attr.obsolete"

    const-string v1, "attribute obsolete: {0}"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v8

    const-string v0, "dc.attr.obsolete.use.css"

    const-string v1, "attribute obsolete, use CSS instead: {0}"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v9

    const-string v0, "dc.attr.repeated"

    const-string v1, "repeated attribute: {0}"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v10

    const-string v0, "dc.attr.table.border.html5"

    const-string v1, "attribute border for table only accepts \"\" or \"1\", use CSS instead: {0}"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v11

    const-string v0, "dc.attr.unknown"

    const-string v1, "unknown attribute: {0}"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v12

    const-string v0, "dc.bad.option"

    const-string v1, "bad option: {0}"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v13

    const-string v0, "dc.bad.value.for.option"

    const-string v1, "bad value for option: {0} {1}"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v14

    const-string v0, "dc.empty"

    const-string v1, "no description for @{0}"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v15

    const-string v0, "dc.entity.invalid"

    const-string v1, "invalid entity &{0};"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v16

    const-string v0, "dc.exception.not.thrown"

    const-string v1, "exception not thrown: {0}"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v17

    const-string v0, "dc.exists.param"

    const-string v1, "@param \"{0}\" has already been specified"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v18

    const-string v0, "dc.exists.return"

    const-string v1, "@return has already been specified"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v19

    const-string v0, "dc.invalid.anchor"

    const-string v1, "invalid name for anchor: \"{0}\""

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v20

    const-string v0, "dc.invalid.param"

    const-string v1, "invalid use of @param"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v21

    const-string v0, "dc.invalid.provides"

    const-string v1, "invalid use of @provides"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v22

    const-string v0, "dc.invalid.return"

    const-string v1, "invalid use of @return"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v23

    const-string v0, "dc.invalid.throws"

    const-string v1, "invalid use of @throws"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v24

    const-string v0, "dc.invalid.uri"

    const-string v1, "invalid uri: \"{0}\""

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v25

    const-string v0, "dc.invalid.uses"

    const-string v1, "invalid use of @uses"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v26

    const-string v0, "dc.main.ioerror"

    const-string v1, "IO error: {0}"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v27

    const-string v0, "dc.main.no.files.given"

    const-string v1, "No files given"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v28

    const-string v0, "dc.main.usage"

    const-string v1, "Usage:\n    doclint [options] source-files...\n\nOptions:\n  -Xmsgs  \n    Same as -Xmsgs:all\n  -Xmsgs:values\n    Specify categories of issues to be checked, where \'\'values\'\'\n    is a comma-separated list of any of the following:\n      reference      show places where comments contain incorrect\n                     references to Java source code elements\n      syntax         show basic syntax errors within comments\n      html           show issues with HTML tags and attributes\n      accessibility  show issues for accessibility\n      missing        show issues with missing documentation\n      all            all of the above\n    Precede a value with \'\'-\'\' to negate it\n    Categories may be qualified by one of:\n      /public /protected /package /private\n    For positive categories (not beginning with \'\'-\'\')\n    the qualifier applies to that access level and above.\n    For negative categories (beginning with \'\'-\'\')\n    the qualifier applies to that access level and below.\n    If a qualifier is missing, the category applies to\n    all access levels.\n    For example, -Xmsgs:all,-syntax/private\n    This will enable all messages, except syntax errors\n    in the doc comments of private methods.\n    If no -Xmsgs options are provided, the default is\n    equivalent to -Xmsgs:all/protected, meaning that\n    all messages are reported for protected and public\n    declarations only. \n  -XcheckPackage:<packages>\n    Enable or disable checks in specific packages.\n    <packages> is a comma separated list of package specifiers.\n    Package specifier is either a qualified name of a package\n    or a package name prefix followed by \'\'.*\'\', which expands to\n    all sub-packages of the given package. Prefix the package specifier\n    with \'\'-\'\' to disable checks for the specified packages.\n  -stats\n    Report statistics on the reported issues.\n  -h -help --help -usage -?\n    Show this message.\n\nThe following javac options are also supported\n  -bootclasspath, -classpath, -cp, -sourcepath, -Xmaxerrs, -Xmaxwarns\n\nTo run doclint on part of a project, put the compiled classes for your\nproject on the classpath (or bootclasspath), then specify the source files\nto be checked on the command line."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v29

    const-string v0, "dc.missing.comment"

    const-string v1, "no comment"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v30

    const-string v0, "dc.missing.param"

    const-string v1, "no @param for {0}"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v31

    const-string v0, "dc.missing.return"

    const-string v1, "no @return"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v32

    const-string v0, "dc.missing.throws"

    const-string v1, "no @throws for {0}"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v33

    const-string v0, "dc.no.alt.attr.for.image"

    const-string v1, "no \"alt\" attribute for image"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v34

    const-string v0, "dc.no.summary.or.caption.for.table"

    const-string v1, "no summary or caption for table"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v35

    const-string v0, "dc.param.name.not.found"

    const-string v1, "@param name not found"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v36

    const-string v0, "dc.ref.not.found"

    const-string v1, "reference not found"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v37

    const-string v0, "dc.service.not.found"

    const-string v1, "service-type not found"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v38

    const-string v0, "dc.tag.code.within.code"

    const-string v1, "\'{@code\'} within <code>"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v39

    const-string v0, "dc.tag.empty"

    const-string v1, "empty <{0}> tag"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v40

    const-string v0, "dc.tag.end.not.permitted"

    const-string v1, "invalid end tag: </{0}>"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v41

    const-string v0, "dc.tag.end.unexpected"

    const-string v1, "unexpected end tag: </{0}>"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v42

    const-string v0, "dc.tag.header.sequence.1"

    const-string v1, "header used out of sequence: <{0}>"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v43

    const-string v0, "dc.tag.header.sequence.2"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v44

    const-string v0, "dc.tag.nested.not.allowed"

    const-string v1, "nested tag not allowed: <{0}>"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v45

    const-string v0, "dc.tag.not.allowed"

    const-string v1, "element not allowed in documentation comments: <{0}>"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v46

    const-string v0, "dc.tag.not.allowed.here"

    const-string v1, "tag not allowed here: <{0}>"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v47

    const-string v0, "dc.tag.not.allowed.inline.element"

    const-string v1, "block element not allowed within inline element <{1}>: {0}"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v48

    const-string v0, "dc.tag.not.allowed.inline.other"

    const-string v1, "block element not allowed here: {0}"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v49

    const-string v0, "dc.tag.not.allowed.inline.tag"

    const-string v1, "block element not allowed within @{1}: {0}"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v50

    const-string v0, "dc.tag.not.closed"

    const-string v1, "element not closed: {0}"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v51

    const-string v0, "dc.tag.not.supported"

    const-string v1, "tag not supported in the generated HTML version: {0}"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v52

    const-string v0, "dc.tag.p.in.pre"

    const-string v1, "unexpected use of <p> inside <pre> element"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v53

    const-string v0, "dc.tag.requires.heading"

    const-string v1, "heading not found for </{0}>"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v54

    const-string v0, "dc.tag.self.closing"

    const-string v1, "self-closing element not allowed"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v55

    const-string v0, "dc.tag.start.unmatched"

    const-string v1, "end tag missing: </{0}>"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v56

    const-string v0, "dc.tag.unknown"

    const-string v1, "unknown tag: {0}"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v57

    const-string v0, "dc.text.not.allowed"

    const-string v1, "text not allowed in <{0}> element"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v58

    const-string v0, "dc.type.arg.not.allowed"

    const-string v1, "type arguments not allowed here"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v59

    const-string v0, "dc.unexpected.comment"

    const-string v1, "documentation comment not expected here"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v60

    const-string v0, "dc.value.not.a.constant"

    const-string v1, "value does not refer to a constant"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v61

    const-string v0, "dc.value.not.allowed.here"

    const-string v1, "\'{@value}\' not allowed here"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v62

    filled-new-array/range {v2 .. v62}, [[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
