.class public final Lcom/google/common/collect/E1$l;
.super Lcom/google/common/collect/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/E1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "l"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/b<",
        "TT;>;"
    }
.end annotation


# static fields
.field public static final f:Lcom/google/common/collect/f3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/f3<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final d:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TT;"
        }
    .end annotation
.end field

.field public final e:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/google/common/collect/E1$l;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-direct {v0, v2, v1, v1, v1}, Lcom/google/common/collect/E1$l;-><init>([Ljava/lang/Object;III)V

    sput-object v0, Lcom/google/common/collect/E1$l;->f:Lcom/google/common/collect/f3;

    return-void
.end method

.method public constructor <init>([Ljava/lang/Object;III)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;III)V"
        }
    .end annotation

    invoke-direct {p0, p3, p4}, Lcom/google/common/collect/b;-><init>(II)V

    iput-object p1, p0, Lcom/google/common/collect/E1$l;->d:[Ljava/lang/Object;

    iput p2, p0, Lcom/google/common/collect/E1$l;->e:I

    return-void
.end method


# virtual methods
.method public a(I)Ljava/lang/Object;
    .locals 2
    .annotation runtime Lcom/google/common/collect/f2;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/common/collect/E1$l;->d:[Ljava/lang/Object;

    iget v1, p0, Lcom/google/common/collect/E1$l;->e:I

    add-int/2addr v1, p1

    aget-object p1, v0, v1

    return-object p1
.end method
