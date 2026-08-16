.class public Ldi/f;
.super Loh/v;
.source "SourceFile"


# instance fields
.field public b:Loh/y;


# direct methods
.method public constructor <init>(Ljk/i;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Loh/v;-><init>()V

    new-instance v0, Loh/C0;

    invoke-static {p1}, Ldi/e;->b(Ljk/i;)[B

    move-result-object p1

    invoke-direct {v0, p1}, Loh/C0;-><init>([B)V

    iput-object v0, p0, Ldi/f;->b:Loh/y;

    return-void
.end method

.method public constructor <init>(Loh/y;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Loh/v;-><init>()V

    iput-object p1, p0, Ldi/f;->b:Loh/y;

    return-void
.end method

.method public static u(Ljava/lang/Object;)Ldi/f;
    .locals 1

    instance-of v0, p0, Ldi/f;

    if-eqz v0, :cond_0

    check-cast p0, Ldi/f;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance v0, Ldi/f;

    invoke-static {p0}, Loh/y;->F(Ljava/lang/Object;)Loh/y;

    move-result-object p0

    invoke-direct {v0, p0}, Ldi/f;-><init>(Loh/y;)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public r()Loh/B;
    .locals 1

    iget-object v0, p0, Ldi/f;->b:Loh/y;

    return-object v0
.end method
