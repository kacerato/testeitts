.class public final synthetic Lun/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic b:Lwn/h;

.field public final synthetic c:Lwn/N;


# direct methods
.method public synthetic constructor <init>(Lwn/h;Lwn/N;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lun/e;->b:Lwn/h;

    iput-object p2, p0, Lun/e;->c:Lwn/N;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lun/e;->b:Lwn/h;

    iget-object v1, p0, Lun/e;->c:Lwn/N;

    check-cast p1, Lun/d;

    invoke-static {v0, v1, p1}, Lun/f;->c(Lwn/h;Lwn/N;Lun/d;)V

    return-void
.end method
