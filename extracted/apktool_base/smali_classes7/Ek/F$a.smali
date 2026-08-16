.class public LEk/F$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LEk/F;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:LEk/q;

.field public b:LEk/m;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()LEk/F;
    .locals 3

    new-instance v0, LEk/F;

    iget-object v1, p0, LEk/F$a;->a:LEk/q;

    iget-object v2, p0, LEk/F$a;->b:LEk/m;

    invoke-direct {v0, v1, v2}, LEk/F;-><init>(LEk/q;LEk/m;)V

    return-object v0
.end method

.method public b(LEk/q;)LEk/F$a;
    .locals 0

    iput-object p1, p0, LEk/F$a;->a:LEk/q;

    return-object p0
.end method

.method public c(LEk/m;)LEk/F$a;
    .locals 0

    iput-object p1, p0, LEk/F$a;->b:LEk/m;

    return-object p0
.end method
