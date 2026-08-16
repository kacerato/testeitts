.class public final LD2/m$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LD2/m$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LD2/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation build Lv2/d;
.end annotation


# instance fields
.field public final a:Ljava/lang/reflect/Method;


# direct methods
.method public constructor <init>(Ljava/lang/reflect/Method;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LD2/m$b;->a:Ljava/lang/reflect/Method;

    return-void
.end method

.method public static b()LD2/m$b;
    .locals 3
    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    const-class v0, Ljava/lang/Throwable;

    :try_start_0
    const-string v1, "addSuppressed"

    filled-new-array {v0}, [Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance v1, LD2/m$b;

    invoke-direct {v1, v0}, LD2/m$b;-><init>(Ljava/lang/reflect/Method;)V

    return-object v1

    :catchall_0
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public a(Ljava/io/Closeable;Ljava/lang/Throwable;Ljava/lang/Throwable;)V
    .locals 2

    if-ne p2, p3, :cond_0

    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, LD2/m$b;->a:Ljava/lang/reflect/Method;

    filled-new-array {p3}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    sget-object v0, LD2/m$a;->a:LD2/m$a;

    invoke-virtual {v0, p1, p2, p3}, LD2/m$a;->a(Ljava/io/Closeable;Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
