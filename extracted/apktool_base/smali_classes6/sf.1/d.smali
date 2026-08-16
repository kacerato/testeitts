.class public final synthetic Lsf/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LMf/a;


# instance fields
.field public final synthetic b:[J


# direct methods
.method public synthetic constructor <init>([J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lsf/d;->b:[J

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lsf/d;->b:[J

    invoke-static {v0}, Lsf/g;->Z([J)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method
