.class public final Lf1/s;
.super Lf1/g;
.source "SourceFile"


# instance fields
.field public final synthetic e:Lv1/l;


# direct methods
.method public constructor <init>(Lf1/u;Lv1/l;)V
    .locals 0

    iput-object p2, p0, Lf1/s;->e:Lv1/l;

    invoke-direct {p0}, Lf1/g;-><init>()V

    return-void
.end method


# virtual methods
.method public final R0(Lcom/google/android/gms/common/api/Status;I)V
    .locals 1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    iget-object v0, p0, Lf1/s;->e:Lv1/l;

    invoke-static {p1, p2, v0}, LD0/s;->a(Lcom/google/android/gms/common/api/Status;Ljava/lang/Object;Lv1/l;)V

    return-void
.end method
