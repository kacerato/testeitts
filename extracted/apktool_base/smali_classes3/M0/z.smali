.class public final LM0/z;
.super LM0/b;
.source "SourceFile"


# instance fields
.field public final synthetic e:Lv1/l;


# direct methods
.method public constructor <init>(LM0/B;Lv1/l;)V
    .locals 0

    iput-object p2, p0, LM0/z;->e:Lv1/l;

    invoke-direct {p0}, LM0/b;-><init>()V

    return-void
.end method


# virtual methods
.method public final z0(Lcom/google/android/gms/common/api/Status;LL0/e;)V
    .locals 1
    .param p2    # LL0/e;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, LM0/z;->e:Lv1/l;

    invoke-static {p1, p2, v0}, LD0/s;->d(Lcom/google/android/gms/common/api/Status;Ljava/lang/Object;Lv1/l;)Z

    return-void
.end method
