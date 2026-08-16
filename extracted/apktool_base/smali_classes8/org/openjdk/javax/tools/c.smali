.class public final synthetic Lorg/openjdk/javax/tools/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/security/PrivilegedAction;


# instance fields
.field public final synthetic a:Ljava/lang/Object;

.field public final synthetic b:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/openjdk/javax/tools/c;->a:Ljava/lang/Object;

    iput-object p2, p0, Lorg/openjdk/javax/tools/c;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lorg/openjdk/javax/tools/c;->a:Ljava/lang/Object;

    iget-object v1, p0, Lorg/openjdk/javax/tools/c;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/openjdk/javax/tools/ToolProvider;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
