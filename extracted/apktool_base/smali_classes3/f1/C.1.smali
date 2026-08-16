.class public final Lf1/C;
.super Lf1/l;
.source "SourceFile"


# instance fields
.field public final synthetic e:Lv1/l;


# direct methods
.method public constructor <init>(Lf1/c;Lv1/l;)V
    .locals 0

    iput-object p2, p0, Lf1/C;->e:Lv1/l;

    invoke-direct {p0}, Lf1/l;-><init>()V

    return-void
.end method


# virtual methods
.method public final K(Lcom/google/android/gms/common/api/Status;)V
    .locals 1

    iget-object v0, p0, Lf1/C;->e:Lv1/l;

    invoke-static {p1, v0}, LD0/s;->b(Lcom/google/android/gms/common/api/Status;Lv1/l;)V

    return-void
.end method
