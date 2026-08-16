.class public final Lcom/android/tools/r8/ir/optimize/F0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic c:Z = true


# instance fields
.field public final a:I

.field public final b:Ljava/util/AbstractCollection;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(ILjava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/tools/r8/ir/optimize/F0;->a:I

    check-cast p2, Ljava/util/AbstractCollection;

    iput-object p2, p0, Lcom/android/tools/r8/ir/optimize/F0;->b:Ljava/util/AbstractCollection;

    return-void
.end method
