.class public final synthetic LIf/t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LMf/q;


# instance fields
.field public final synthetic b:Z


# direct methods
.method public synthetic constructor <init>(Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, LIf/t;->b:Z

    return-void
.end method


# virtual methods
.method public final n(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-boolean v0, p0, LIf/t;->b:Z

    check-cast p1, LIf/a;

    check-cast p2, Ljava/nio/file/Path;

    check-cast p3, Ljava/nio/file/Path;

    invoke-static {v0, p1, p2, p3}, LIf/z;->I(ZLIf/a;Ljava/nio/file/Path;Ljava/nio/file/Path;)LIf/b;

    move-result-object p1

    return-object p1
.end method
