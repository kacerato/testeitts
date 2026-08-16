.class public LEk/i$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LEk/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:LEk/D;

.field public b:LEk/J;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()LEk/i;
    .locals 3

    new-instance v0, LEk/i;

    iget-object v1, p0, LEk/i$a;->a:LEk/D;

    iget-object v2, p0, LEk/i$a;->b:LEk/J;

    invoke-direct {v0, v1, v2}, LEk/i;-><init>(LEk/D;LEk/J;)V

    return-object v0
.end method

.method public b(LEk/J;)LEk/i$a;
    .locals 0

    iput-object p1, p0, LEk/i$a;->b:LEk/J;

    return-object p0
.end method

.method public c(LEk/D;)LEk/i$a;
    .locals 0

    iput-object p1, p0, LEk/i$a;->a:LEk/D;

    return-object p0
.end method
