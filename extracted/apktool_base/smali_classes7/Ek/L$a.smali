.class public LEk/L$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LEk/L;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:LEk/F;

.field public b:LEk/n;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()LEk/L;
    .locals 3

    new-instance v0, LEk/L;

    iget-object v1, p0, LEk/L$a;->a:LEk/F;

    iget-object v2, p0, LEk/L$a;->b:LEk/n;

    invoke-direct {v0, v1, v2}, LEk/L;-><init>(LEk/F;LEk/n;)V

    return-object v0
.end method

.method public b(LEk/n;)LEk/L$a;
    .locals 0

    iput-object p1, p0, LEk/L$a;->b:LEk/n;

    return-object p0
.end method

.method public c(LEk/F;)LEk/L$a;
    .locals 0

    iput-object p1, p0, LEk/L$a;->a:LEk/F;

    return-object p0
.end method
