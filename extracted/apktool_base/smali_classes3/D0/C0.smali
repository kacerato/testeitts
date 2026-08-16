.class public final synthetic LD0/C0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LD0/n;


# instance fields
.field public final synthetic a:LT0/d;


# direct methods
.method public synthetic constructor <init>(LT0/d;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LD0/C0;->a:LT0/d;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, LD0/C0;->a:LT0/d;

    check-cast p1, Lcom/google/android/gms/common/api/a$b;

    check-cast p2, Lv1/l;

    invoke-interface {v0, p1, p2}, LT0/d;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method
