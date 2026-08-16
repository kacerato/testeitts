.class public LDh/b;
.super Loh/v;
.source "SourceFile"


# instance fields
.field public b:Loh/y;


# direct methods
.method public constructor <init>(Loh/y;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Loh/v;-><init>()V

    iput-object p1, p0, LDh/b;->b:Loh/y;

    return-void
.end method

.method public constructor <init>([B)V
    .locals 1

    .line 2
    new-instance v0, Loh/C0;

    invoke-direct {v0, p1}, Loh/C0;-><init>([B)V

    invoke-direct {p0, v0}, LDh/b;-><init>(Loh/y;)V

    return-void
.end method

.method public static u(Ljava/lang/Object;)LDh/b;
    .locals 1

    instance-of v0, p0, LDh/b;

    if-eqz v0, :cond_0

    check-cast p0, LDh/b;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, LDh/b;

    invoke-static {p0}, Loh/y;->F(Ljava/lang/Object;)Loh/y;

    move-result-object p0

    invoke-direct {v0, p0}, LDh/b;-><init>(Loh/y;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public r()Loh/B;
    .locals 1

    iget-object v0, p0, LDh/b;->b:Loh/y;

    return-object v0
.end method

.method public v()Loh/y;
    .locals 1

    iget-object v0, p0, LDh/b;->b:Loh/y;

    return-object v0
.end method
