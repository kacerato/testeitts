.class public final Lcom/android/tools/r8/internal/tS;
.super Lcom/android/tools/r8/internal/G0;
.source "SourceFile"


# instance fields
.field public final b:Ljava/lang/Object;

.field public c:Ljava/lang/Object;

.field public d:Lcom/android/tools/r8/internal/tS;

.field public e:Lcom/android/tools/r8/internal/tS;

.field public f:Lcom/android/tools/r8/internal/tS;

.field public g:Lcom/android/tools/r8/internal/tS;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/tools/r8/internal/G0;-><init>()V

    iput-object p1, p0, Lcom/android/tools/r8/internal/tS;->b:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/tools/r8/internal/tS;->c:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final getKey()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/tS;->b:Ljava/lang/Object;

    return-object v0
.end method

.method public final getValue()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/tS;->c:Ljava/lang/Object;

    return-object v0
.end method

.method public final setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/tools/r8/internal/tS;->c:Ljava/lang/Object;

    iput-object p1, p0, Lcom/android/tools/r8/internal/tS;->c:Ljava/lang/Object;

    return-object v0
.end method
