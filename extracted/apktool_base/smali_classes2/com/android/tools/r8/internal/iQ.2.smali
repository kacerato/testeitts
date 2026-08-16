.class public final Lcom/android/tools/r8/internal/iQ;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:I

.field public final b:I

.field public final c:Ljava/util/ArrayList;

.field public d:Lcom/android/tools/r8/internal/jQ;


# direct methods
.method public constructor <init>(II)V
    .locals 1

    const-string v0, "type"

    invoke-static {p1, v0}, Lcom/android/tools/r8/internal/FJ;->a(ILjava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/tools/r8/internal/iQ;->a:I

    iput p2, p0, Lcom/android/tools/r8/internal/iQ;->b:I

    new-instance p1, Ljava/util/ArrayList;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Lcom/android/tools/r8/internal/iQ;->c:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/tools/r8/internal/jQ;)V
    .locals 0

    iput-object p1, p0, Lcom/android/tools/r8/internal/iQ;->d:Lcom/android/tools/r8/internal/jQ;

    return-void
.end method
