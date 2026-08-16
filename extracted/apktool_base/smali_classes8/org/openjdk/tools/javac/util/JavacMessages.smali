.class public Lorg/openjdk/tools/javac/util/JavacMessages;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/openjdk/tools/javac/api/Messages;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/openjdk/tools/javac/util/JavacMessages$ResourceBundleHelper;
    }
.end annotation


# static fields
.field private static defaultBundle:Ljava/util/ResourceBundle; = null

.field private static final defaultBundleName:Ljava/lang/String; = "org.openjdk.tools.javac.resources.compiler"

.field private static defaultMessages:Lorg/openjdk/tools/javac/util/JavacMessages;

.field public static final messagesKey:Lorg/openjdk/tools/javac/util/Context$Key;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/openjdk/tools/javac/util/Context$Key<",
            "Lorg/openjdk/tools/javac/util/JavacMessages;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private bundleCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/util/Locale;",
            "Ljava/lang/ref/SoftReference<",
            "Lorg/openjdk/tools/javac/util/List<",
            "Ljava/util/ResourceBundle;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private bundleHelpers:Lorg/openjdk/tools/javac/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/openjdk/tools/javac/util/List<",
            "Lorg/openjdk/tools/javac/util/JavacMessages$ResourceBundleHelper;",
            ">;"
        }
    .end annotation
.end field

.field private currentBundles:Lorg/openjdk/tools/javac/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/openjdk/tools/javac/util/List<",
            "Ljava/util/ResourceBundle;",
            ">;"
        }
    .end annotation
.end field

.field private currentLocale:Ljava/util/Locale;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/openjdk/tools/javac/util/Context$Key;

    invoke-direct {v0}, Lorg/openjdk/tools/javac/util/Context$Key;-><init>()V

    sput-object v0, Lorg/openjdk/tools/javac/util/JavacMessages;->messagesKey:Lorg/openjdk/tools/javac/util/Context$Key;

    return-void
.end method

.method public constructor <init>()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/MissingResourceException;
        }
    .end annotation

    .line 9
    const-string v0, "org.openjdk.tools.javac.resources.compiler"

    invoke-direct {p0, v0}, Lorg/openjdk/tools/javac/util/JavacMessages;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/MissingResourceException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 3
    invoke-direct {p0, p1, v0}, Lorg/openjdk/tools/javac/util/JavacMessages;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/Locale;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/MissingResourceException;
        }
    .end annotation

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    invoke-static {}, Lorg/openjdk/tools/javac/util/List;->nil()Lorg/openjdk/tools/javac/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/openjdk/tools/javac/util/JavacMessages;->bundleHelpers:Lorg/openjdk/tools/javac/util/List;

    .line 6
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/openjdk/tools/javac/util/JavacMessages;->bundleCache:Ljava/util/Map;

    .line 7
    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/util/JavacMessages;->add(Ljava/lang/String;)V

    .line 8
    invoke-virtual {p0, p2}, Lorg/openjdk/tools/javac/util/JavacMessages;->setCurrentLocale(Ljava/util/Locale;)V

    return-void
.end method

.method public constructor <init>(Lorg/openjdk/tools/javac/util/Context;)V
    .locals 2

    .line 1
    const-class v0, Ljava/util/Locale;

    invoke-virtual {p1, v0}, Lorg/openjdk/tools/javac/util/Context;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Locale;

    const-string v1, "org.openjdk.tools.javac.resources.compiler"

    invoke-direct {p0, v1, v0}, Lorg/openjdk/tools/javac/util/JavacMessages;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 2
    sget-object v0, Lorg/openjdk/tools/javac/util/JavacMessages;->messagesKey:Lorg/openjdk/tools/javac/util/Context$Key;

    invoke-virtual {p1, v0, p0}, Lorg/openjdk/tools/javac/util/Context;->put(Lorg/openjdk/tools/javac/util/Context$Key;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic a(Ljava/lang/String;Ljava/util/Locale;)Ljava/util/ResourceBundle;
    .locals 0

    invoke-static {p0, p1}, Lorg/openjdk/tools/javac/util/JavacMessages;->lambda$add$0(Ljava/lang/String;Ljava/util/Locale;)Ljava/util/ResourceBundle;

    move-result-object p0

    return-object p0
.end method

.method public static getDefaultBundle()Ljava/util/ResourceBundle;
    .locals 3

    :try_start_0
    sget-object v0, Lorg/openjdk/tools/javac/util/JavacMessages;->defaultBundle:Ljava/util/ResourceBundle;

    if-nez v0, :cond_0

    const-string v0, "org.openjdk.tools.javac.resources.compiler"

    invoke-static {v0}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;)Ljava/util/ResourceBundle;

    move-result-object v0

    sput-object v0, Lorg/openjdk/tools/javac/util/JavacMessages;->defaultBundle:Ljava/util/ResourceBundle;

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :cond_0
    :goto_0
    sget-object v0, Lorg/openjdk/tools/javac/util/JavacMessages;->defaultBundle:Ljava/util/ResourceBundle;
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :goto_1
    new-instance v1, Ljava/lang/Error;

    const-string v2, "Fatal: Resource for compiler is missing"

    invoke-direct {v1, v2, v0}, Ljava/lang/Error;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static varargs getDefaultLocalizedString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    invoke-static {}, Lorg/openjdk/tools/javac/util/JavacMessages;->getDefaultBundle()Ljava/util/ResourceBundle;

    move-result-object v0

    invoke-static {v0}, Lorg/openjdk/tools/javac/util/List;->of(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v0

    invoke-static {v0, p0, p1}, Lorg/openjdk/tools/javac/util/JavacMessages;->getLocalizedString(Lorg/openjdk/tools/javac/util/List;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getDefaultMessages()Lorg/openjdk/tools/javac/util/JavacMessages;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    sget-object v0, Lorg/openjdk/tools/javac/util/JavacMessages;->defaultMessages:Lorg/openjdk/tools/javac/util/JavacMessages;

    if-nez v0, :cond_0

    new-instance v0, Lorg/openjdk/tools/javac/util/JavacMessages;

    const-string v1, "org.openjdk.tools.javac.resources.compiler"

    invoke-direct {v0, v1}, Lorg/openjdk/tools/javac/util/JavacMessages;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/openjdk/tools/javac/util/JavacMessages;->defaultMessages:Lorg/openjdk/tools/javac/util/JavacMessages;

    :cond_0
    sget-object v0, Lorg/openjdk/tools/javac/util/JavacMessages;->defaultMessages:Lorg/openjdk/tools/javac/util/JavacMessages;

    return-object v0
.end method

.method private static varargs getLocalizedString(Lorg/openjdk/tools/javac/util/List;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/openjdk/tools/javac/util/List<",
            "Ljava/util/ResourceBundle;",
            ">;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 4
    :goto_0
    invoke-virtual {p0}, Lorg/openjdk/tools/javac/util/List;->nonEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    if-nez v0, :cond_0

    .line 5
    iget-object v1, p0, Lorg/openjdk/tools/javac/util/List;->head:Ljava/lang/Object;

    check-cast v1, Ljava/util/ResourceBundle;

    .line 6
    :try_start_0
    invoke-virtual {v1, p1}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    :catch_0
    iget-object p0, p0, Lorg/openjdk/tools/javac/util/List;->tail:Lorg/openjdk/tools/javac/util/List;

    goto :goto_0

    :cond_0
    if-nez v0, :cond_1

    .line 8
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "compiler message file broken: key="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " arguments={0}, {1}, {2}, {3}, {4}, {5}, {6}, {7}"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 9
    :cond_1
    invoke-static {v0, p2}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static instance(Lorg/openjdk/tools/javac/util/Context;)Lorg/openjdk/tools/javac/util/JavacMessages;
    .locals 1

    sget-object v0, Lorg/openjdk/tools/javac/util/JavacMessages;->messagesKey:Lorg/openjdk/tools/javac/util/Context$Key;

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/util/Context;->get(Lorg/openjdk/tools/javac/util/Context$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/openjdk/tools/javac/util/JavacMessages;

    if-nez v0, :cond_0

    new-instance v0, Lorg/openjdk/tools/javac/util/JavacMessages;

    invoke-direct {v0, p0}, Lorg/openjdk/tools/javac/util/JavacMessages;-><init>(Lorg/openjdk/tools/javac/util/Context;)V

    :cond_0
    return-object v0
.end method

.method private static synthetic lambda$add$0(Ljava/lang/String;Ljava/util/Locale;)Ljava/util/ResourceBundle;
    .locals 0

    invoke-static {p0, p1}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;Ljava/util/Locale;)Ljava/util/ResourceBundle;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public add(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/MissingResourceException;
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/openjdk/tools/javac/util/d;

    invoke-direct {v0, p1}, Lorg/openjdk/tools/javac/util/d;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lorg/openjdk/tools/javac/util/JavacMessages;->add(Lorg/openjdk/tools/javac/util/JavacMessages$ResourceBundleHelper;)V

    return-void
.end method

.method public add(Lorg/openjdk/tools/javac/util/JavacMessages$ResourceBundleHelper;)V
    .locals 1

    .line 2
    iget-object v0, p0, Lorg/openjdk/tools/javac/util/JavacMessages;->bundleHelpers:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {v0, p1}, Lorg/openjdk/tools/javac/util/List;->prepend(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/List;

    move-result-object p1

    iput-object p1, p0, Lorg/openjdk/tools/javac/util/JavacMessages;->bundleHelpers:Lorg/openjdk/tools/javac/util/List;

    .line 3
    iget-object p1, p0, Lorg/openjdk/tools/javac/util/JavacMessages;->bundleCache:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    .line 4
    iget-object p1, p0, Lorg/openjdk/tools/javac/util/JavacMessages;->bundleCache:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->clear()V

    :cond_0
    const/4 p1, 0x0

    .line 5
    iput-object p1, p0, Lorg/openjdk/tools/javac/util/JavacMessages;->currentBundles:Lorg/openjdk/tools/javac/util/List;

    return-void
.end method

.method public getBundles(Ljava/util/Locale;)Lorg/openjdk/tools/javac/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Locale;",
            ")",
            "Lorg/openjdk/tools/javac/util/List<",
            "Ljava/util/ResourceBundle;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lorg/openjdk/tools/javac/util/JavacMessages;->currentLocale:Ljava/util/Locale;

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lorg/openjdk/tools/javac/util/JavacMessages;->currentBundles:Lorg/openjdk/tools/javac/util/List;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/openjdk/tools/javac/util/JavacMessages;->bundleCache:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/SoftReference;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/openjdk/tools/javac/util/List;

    :goto_0
    if-nez v0, :cond_3

    invoke-static {}, Lorg/openjdk/tools/javac/util/List;->nil()Lorg/openjdk/tools/javac/util/List;

    move-result-object v0

    iget-object v1, p0, Lorg/openjdk/tools/javac/util/JavacMessages;->bundleHelpers:Lorg/openjdk/tools/javac/util/List;

    invoke-virtual {v1}, Lorg/openjdk/tools/javac/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/openjdk/tools/javac/util/JavacMessages$ResourceBundleHelper;

    :try_start_0
    invoke-interface {v2, p1}, Lorg/openjdk/tools/javac/util/JavacMessages$ResourceBundleHelper;->getResourceBundle(Ljava/util/Locale;)Ljava/util/ResourceBundle;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/openjdk/tools/javac/util/List;->prepend(Ljava/lang/Object;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v0
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/InternalError;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot find requested resource bundle for locale "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1, v0}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_2
    iget-object v1, p0, Lorg/openjdk/tools/javac/util/JavacMessages;->bundleCache:Ljava/util/Map;

    new-instance v2, Ljava/lang/ref/SoftReference;

    invoke-direct {v2, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    return-object v0
.end method

.method public getCurrentLocale()Ljava/util/Locale;
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/javac/util/JavacMessages;->currentLocale:Ljava/util/Locale;

    return-object v0
.end method

.method public varargs getLocalizedString(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/openjdk/tools/javac/util/JavacMessages;->currentLocale:Ljava/util/Locale;

    invoke-virtual {p0, v0, p1, p2}, Lorg/openjdk/tools/javac/util/JavacMessages;->getLocalizedString(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public varargs getLocalizedString(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 0

    if-nez p1, :cond_0

    .line 2
    invoke-virtual {p0}, Lorg/openjdk/tools/javac/util/JavacMessages;->getCurrentLocale()Ljava/util/Locale;

    move-result-object p1

    .line 3
    :cond_0
    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/util/JavacMessages;->getBundles(Ljava/util/Locale;)Lorg/openjdk/tools/javac/util/List;

    move-result-object p1

    invoke-static {p1, p2, p3}, Lorg/openjdk/tools/javac/util/JavacMessages;->getLocalizedString(Lorg/openjdk/tools/javac/util/List;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public setCurrentLocale(Ljava/util/Locale;)V
    .locals 1

    if-nez p1, :cond_0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p1

    :cond_0
    invoke-virtual {p0, p1}, Lorg/openjdk/tools/javac/util/JavacMessages;->getBundles(Ljava/util/Locale;)Lorg/openjdk/tools/javac/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/openjdk/tools/javac/util/JavacMessages;->currentBundles:Lorg/openjdk/tools/javac/util/List;

    iput-object p1, p0, Lorg/openjdk/tools/javac/util/JavacMessages;->currentLocale:Ljava/util/Locale;

    return-void
.end method
