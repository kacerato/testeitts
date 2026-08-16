.class public final LM0/A;
.super Lcom/google/android/gms/common/api/internal/e$a;
.source "SourceFile"


# instance fields
.field public final synthetic e:Lv1/l;


# direct methods
.method public constructor <init>(LM0/B;Lv1/l;)V
    .locals 0

    iput-object p2, p0, LM0/A;->e:Lv1/l;

    invoke-direct {p0}, Lcom/google/android/gms/common/api/internal/e$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final Z(Lcom/google/android/gms/common/api/Status;)V
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, LM0/A;->e:Lv1/l;

    invoke-static {p1, v0, v1}, LD0/s;->d(Lcom/google/android/gms/common/api/Status;Ljava/lang/Object;Lv1/l;)Z

    return-void
.end method
