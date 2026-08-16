.class public LEk/a$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LEk/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:Loh/y;

.field public b:LEk/v;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()LEk/a;
    .locals 3

    new-instance v0, LEk/a;

    iget-object v1, p0, LEk/a$a;->a:Loh/y;

    iget-object v2, p0, LEk/a$a;->b:LEk/v;

    invoke-direct {v0, v1, v2}, LEk/a;-><init>(Loh/y;LEk/v;)V

    return-object v0
.end method

.method public b(LEk/v;)LEk/a$a;
    .locals 0

    iput-object p1, p0, LEk/a$a;->b:LEk/v;

    return-object p0
.end method

.method public c([B)LEk/a$a;
    .locals 1

    new-instance v0, LEk/v;

    invoke-direct {v0, p1}, LEk/v;-><init>([B)V

    invoke-virtual {p0, v0}, LEk/a$a;->b(LEk/v;)LEk/a$a;

    move-result-object p1

    return-object p1
.end method

.method public d(Loh/y;)LEk/a$a;
    .locals 0

    iput-object p1, p0, LEk/a$a;->a:Loh/y;

    return-object p0
.end method

.method public e([B)LEk/a$a;
    .locals 1

    new-instance v0, Loh/C0;

    invoke-static {p1}, Lorg/bouncycastle/util/a;->p([B)[B

    move-result-object p1

    invoke-direct {v0, p1}, Loh/C0;-><init>([B)V

    invoke-virtual {p0, v0}, LEk/a$a;->d(Loh/y;)LEk/a$a;

    move-result-object p1

    return-object p1
.end method
