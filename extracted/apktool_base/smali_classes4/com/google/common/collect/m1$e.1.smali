.class public Lcom/google/common/collect/m1$e;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/m1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "e"
.end annotation

.annotation build Lv2/c;
.end annotation


# static fields
.field public static final a:Lcom/google/common/collect/B2$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/B2$b<",
            "Lcom/google/common/collect/m1;",
            ">;"
        }
    .end annotation
.end field

.field public static final b:Lcom/google/common/collect/B2$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/B2$b<",
            "Lcom/google/common/collect/m1;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "map"

    const-class v1, Lcom/google/common/collect/m1;

    invoke-static {v1, v0}, Lcom/google/common/collect/B2;->a(Ljava/lang/Class;Ljava/lang/String;)Lcom/google/common/collect/B2$b;

    move-result-object v0

    sput-object v0, Lcom/google/common/collect/m1$e;->a:Lcom/google/common/collect/B2$b;

    const-string v0, "size"

    invoke-static {v1, v0}, Lcom/google/common/collect/B2;->a(Ljava/lang/Class;Ljava/lang/String;)Lcom/google/common/collect/B2$b;

    move-result-object v0

    sput-object v0, Lcom/google/common/collect/m1$e;->b:Lcom/google/common/collect/B2$b;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
