.class public final Lcom/google/protobuf/P0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/M1;


# annotations
.annotation runtime Lcom/google/protobuf/B;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protobuf/P0$b;
    }
.end annotation


# static fields
.field public static final b:Lcom/google/protobuf/a1;


# instance fields
.field public final a:Lcom/google/protobuf/a1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/protobuf/P0$a;

    invoke-direct {v0}, Lcom/google/protobuf/P0$a;-><init>()V

    sput-object v0, Lcom/google/protobuf/P0;->b:Lcom/google/protobuf/a1;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/protobuf/P0;->b()Lcom/google/protobuf/a1;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/P0;-><init>(Lcom/google/protobuf/a1;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/protobuf/a1;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "messageInfoFactory"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    const-string v0, "messageInfoFactory"

    invoke-static {p1, v0}, Lcom/google/protobuf/D0;->e(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/a1;

    iput-object p1, p0, Lcom/google/protobuf/P0;->a:Lcom/google/protobuf/a1;

    return-void
.end method

.method public static b()Lcom/google/protobuf/a1;
    .locals 5

    new-instance v0, Lcom/google/protobuf/P0$b;

    invoke-static {}, Lcom/google/protobuf/u0;->c()Lcom/google/protobuf/u0;

    move-result-object v1

    invoke-static {}, Lcom/google/protobuf/P0;->c()Lcom/google/protobuf/a1;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/google/protobuf/a1;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const/4 v1, 0x1

    aput-object v2, v3, v1

    invoke-direct {v0, v3}, Lcom/google/protobuf/P0$b;-><init>([Lcom/google/protobuf/a1;)V

    return-object v0
.end method

.method public static c()Lcom/google/protobuf/a1;
    .locals 3

    :try_start_0
    const-string v0, "com.google.protobuf.G"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "getInstance"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-virtual {v0, v2, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/a1;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    sget-object v0, Lcom/google/protobuf/P0;->b:Lcom/google/protobuf/a1;

    return-object v0
.end method

.method public static d(Lcom/google/protobuf/Z0;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "messageInfo"
        }
    .end annotation

    invoke-interface {p0}, Lcom/google/protobuf/Z0;->m()Lcom/google/protobuf/y1;

    move-result-object p0

    sget-object v0, Lcom/google/protobuf/y1;->PROTO2:Lcom/google/protobuf/y1;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static e(Ljava/lang/Class;Lcom/google/protobuf/Z0;)Lcom/google/protobuf/L1;
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "messageType",
            "messageInfo"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Lcom/google/protobuf/Z0;",
            ")",
            "Lcom/google/protobuf/L1<",
            "TT;>;"
        }
    .end annotation

    const-class v0, Lcom/google/protobuf/v0;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p1}, Lcom/google/protobuf/P0;->d(Lcom/google/protobuf/Z0;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/google/protobuf/q1;->b()Lcom/google/protobuf/n1;

    move-result-object v3

    invoke-static {}, Lcom/google/protobuf/L0;->b()Lcom/google/protobuf/L0;

    move-result-object v4

    invoke-static {}, Lcom/google/protobuf/N1;->S()Lcom/google/protobuf/q2;

    move-result-object v5

    invoke-static {}, Lcom/google/protobuf/h0;->b()Lcom/google/protobuf/e0;

    move-result-object v6

    invoke-static {}, Lcom/google/protobuf/X0;->b()Lcom/google/protobuf/U0;

    move-result-object v7

    move-object v1, p0

    move-object v2, p1

    invoke-static/range {v1 .. v7}, Lcom/google/protobuf/g1;->O(Ljava/lang/Class;Lcom/google/protobuf/Z0;Lcom/google/protobuf/n1;Lcom/google/protobuf/L0;Lcom/google/protobuf/q2;Lcom/google/protobuf/e0;Lcom/google/protobuf/U0;)Lcom/google/protobuf/g1;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/google/protobuf/q1;->b()Lcom/google/protobuf/n1;

    move-result-object v2

    invoke-static {}, Lcom/google/protobuf/L0;->b()Lcom/google/protobuf/L0;

    move-result-object v3

    invoke-static {}, Lcom/google/protobuf/N1;->S()Lcom/google/protobuf/q2;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {}, Lcom/google/protobuf/X0;->b()Lcom/google/protobuf/U0;

    move-result-object v6

    move-object v0, p0

    move-object v1, p1

    invoke-static/range {v0 .. v6}, Lcom/google/protobuf/g1;->O(Ljava/lang/Class;Lcom/google/protobuf/Z0;Lcom/google/protobuf/n1;Lcom/google/protobuf/L0;Lcom/google/protobuf/q2;Lcom/google/protobuf/e0;Lcom/google/protobuf/U0;)Lcom/google/protobuf/g1;

    move-result-object p0

    :goto_0
    return-object p0

    :cond_1
    invoke-static {p1}, Lcom/google/protobuf/P0;->d(Lcom/google/protobuf/Z0;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/google/protobuf/q1;->a()Lcom/google/protobuf/n1;

    move-result-object v3

    invoke-static {}, Lcom/google/protobuf/L0;->a()Lcom/google/protobuf/L0;

    move-result-object v4

    invoke-static {}, Lcom/google/protobuf/N1;->K()Lcom/google/protobuf/q2;

    move-result-object v5

    invoke-static {}, Lcom/google/protobuf/h0;->a()Lcom/google/protobuf/e0;

    move-result-object v6

    invoke-static {}, Lcom/google/protobuf/X0;->a()Lcom/google/protobuf/U0;

    move-result-object v7

    move-object v1, p0

    move-object v2, p1

    invoke-static/range {v1 .. v7}, Lcom/google/protobuf/g1;->O(Ljava/lang/Class;Lcom/google/protobuf/Z0;Lcom/google/protobuf/n1;Lcom/google/protobuf/L0;Lcom/google/protobuf/q2;Lcom/google/protobuf/e0;Lcom/google/protobuf/U0;)Lcom/google/protobuf/g1;

    move-result-object p0

    goto :goto_1

    :cond_2
    invoke-static {}, Lcom/google/protobuf/q1;->a()Lcom/google/protobuf/n1;

    move-result-object v2

    invoke-static {}, Lcom/google/protobuf/L0;->a()Lcom/google/protobuf/L0;

    move-result-object v3

    invoke-static {}, Lcom/google/protobuf/N1;->L()Lcom/google/protobuf/q2;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {}, Lcom/google/protobuf/X0;->a()Lcom/google/protobuf/U0;

    move-result-object v6

    move-object v0, p0

    move-object v1, p1

    invoke-static/range {v0 .. v6}, Lcom/google/protobuf/g1;->O(Ljava/lang/Class;Lcom/google/protobuf/Z0;Lcom/google/protobuf/n1;Lcom/google/protobuf/L0;Lcom/google/protobuf/q2;Lcom/google/protobuf/e0;Lcom/google/protobuf/U0;)Lcom/google/protobuf/g1;

    move-result-object p0

    :goto_1
    return-object p0
.end method


# virtual methods
.method public a(Ljava/lang/Class;)Lcom/google/protobuf/L1;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "messageType"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lcom/google/protobuf/L1<",
            "TT;>;"
        }
    .end annotation

    invoke-static {p1}, Lcom/google/protobuf/N1;->M(Ljava/lang/Class;)V

    iget-object v0, p0, Lcom/google/protobuf/P0;->a:Lcom/google/protobuf/a1;

    invoke-interface {v0, p1}, Lcom/google/protobuf/a1;->a(Ljava/lang/Class;)Lcom/google/protobuf/Z0;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/protobuf/Z0;->a()Z

    move-result v1

    if-eqz v1, :cond_1

    const-class v1, Lcom/google/protobuf/v0;

    invoke-virtual {v1, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/google/protobuf/N1;->S()Lcom/google/protobuf/q2;

    move-result-object p1

    invoke-static {}, Lcom/google/protobuf/h0;->b()Lcom/google/protobuf/e0;

    move-result-object v1

    invoke-interface {v0}, Lcom/google/protobuf/Z0;->b()Lcom/google/protobuf/b1;

    move-result-object v0

    invoke-static {p1, v1, v0}, Lcom/google/protobuf/h1;->e(Lcom/google/protobuf/q2;Lcom/google/protobuf/e0;Lcom/google/protobuf/b1;)Lcom/google/protobuf/h1;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-static {}, Lcom/google/protobuf/N1;->K()Lcom/google/protobuf/q2;

    move-result-object p1

    invoke-static {}, Lcom/google/protobuf/h0;->a()Lcom/google/protobuf/e0;

    move-result-object v1

    invoke-interface {v0}, Lcom/google/protobuf/Z0;->b()Lcom/google/protobuf/b1;

    move-result-object v0

    invoke-static {p1, v1, v0}, Lcom/google/protobuf/h1;->e(Lcom/google/protobuf/q2;Lcom/google/protobuf/e0;Lcom/google/protobuf/b1;)Lcom/google/protobuf/h1;

    move-result-object p1

    return-object p1

    :cond_1
    invoke-static {p1, v0}, Lcom/google/protobuf/P0;->e(Ljava/lang/Class;Lcom/google/protobuf/Z0;)Lcom/google/protobuf/L1;

    move-result-object p1

    return-object p1
.end method
