.class public abstract Lv0/s;
.super Lv0/q;
.source "SourceFile"


# instance fields
.field public final e:Lcom/google/android/gms/internal/auth/t;


# direct methods
.method public constructor <init>(I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lv0/q;-><init>(ILv0/p;)V

    new-instance p1, Lv0/r;

    invoke-direct {p1, p0}, Lv0/r;-><init>(Lv0/s;)V

    iput-object p1, p0, Lv0/s;->e:Lcom/google/android/gms/internal/auth/t;

    return-void
.end method
