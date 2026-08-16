.class public final synthetic Lorg/openjdk/tools/javac/util/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/openjdk/tools/javac/util/JavacMessages$ResourceBundleHelper;


# instance fields
.field public final synthetic a:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/openjdk/tools/javac/util/d;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getResourceBundle(Ljava/util/Locale;)Ljava/util/ResourceBundle;
    .locals 1

    iget-object v0, p0, Lorg/openjdk/tools/javac/util/d;->a:Ljava/lang/String;

    invoke-static {v0, p1}, Lorg/openjdk/tools/javac/util/JavacMessages;->a(Ljava/lang/String;Ljava/util/Locale;)Ljava/util/ResourceBundle;

    move-result-object p1

    return-object p1
.end method
