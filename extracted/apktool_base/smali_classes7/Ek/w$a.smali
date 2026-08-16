.class public LEk/w$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LEk/w;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:LFk/x;

.field public b:LEk/j;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()LEk/w;
    .locals 3

    new-instance v0, LEk/w;

    iget-object v1, p0, LEk/w$a;->a:LFk/x;

    iget-object v2, p0, LEk/w$a;->b:LEk/j;

    invoke-direct {v0, v1, v2}, LEk/w;-><init>(LFk/x;LEk/j;)V

    return-object v0
.end method

.method public b(LEk/j;)LEk/w$a;
    .locals 0

    iput-object p1, p0, LEk/w$a;->b:LEk/j;

    return-object p0
.end method

.method public c(LFk/x;)LEk/w$a;
    .locals 0

    iput-object p1, p0, LEk/w$a;->a:LFk/x;

    return-object p0
.end method
