.class public Lcom/google/common/collect/j2$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lw2/t;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/j2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lw2/t<",
        "Lcom/google/common/collect/j2;",
        "Lcom/google/common/collect/Q;",
        ">;"
    }
.end annotation


# static fields
.field public static final b:Lcom/google/common/collect/j2$d;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/common/collect/j2$d;

    invoke-direct {v0}, Lcom/google/common/collect/j2$d;-><init>()V

    sput-object v0, Lcom/google/common/collect/j2$d;->b:Lcom/google/common/collect/j2$d;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/common/collect/j2;)Lcom/google/common/collect/Q;
    .locals 0

    iget-object p1, p1, Lcom/google/common/collect/j2;->c:Lcom/google/common/collect/Q;

    return-object p1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/google/common/collect/j2;

    invoke-virtual {p0, p1}, Lcom/google/common/collect/j2$d;->a(Lcom/google/common/collect/j2;)Lcom/google/common/collect/Q;

    move-result-object p1

    return-object p1
.end method
