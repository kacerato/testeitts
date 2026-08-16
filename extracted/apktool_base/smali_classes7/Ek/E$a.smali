.class public LEk/E$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LEk/E;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:LFk/t;

.field public b:LEk/L;

.field public c:LEk/G;

.field public d:LFk/j0;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()LEk/E;
    .locals 5

    new-instance v0, LEk/E;

    iget-object v1, p0, LEk/E$a;->a:LFk/t;

    iget-object v2, p0, LEk/E$a;->b:LEk/L;

    iget-object v3, p0, LEk/E$a;->c:LEk/G;

    iget-object v4, p0, LEk/E$a;->d:LFk/j0;

    invoke-direct {v0, v1, v2, v3, v4}, LEk/E;-><init>(LFk/t;LEk/L;LEk/G;LFk/j0;)V

    return-object v0
.end method

.method public b(LFk/t;)LEk/E$a;
    .locals 0

    iput-object p1, p0, LEk/E$a;->a:LFk/t;

    return-object p0
.end method

.method public c(LFk/j0;)LEk/E$a;
    .locals 0

    iput-object p1, p0, LEk/E$a;->d:LFk/j0;

    return-object p0
.end method

.method public d(LEk/G;)LEk/E$a;
    .locals 0

    iput-object p1, p0, LEk/E$a;->c:LEk/G;

    return-object p0
.end method

.method public e(LEk/L;)LEk/E$a;
    .locals 0

    iput-object p1, p0, LEk/E$a;->b:LEk/L;

    return-object p0
.end method
