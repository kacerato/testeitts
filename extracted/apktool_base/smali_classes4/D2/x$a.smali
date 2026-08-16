.class public LD2/x$a;
.super LD2/v;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LD2/x;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic c:LD2/x;


# direct methods
.method public constructor <init>(LD2/x;)V
    .locals 0

    iput-object p1, p0, LD2/x$a;->c:LD2/x;

    invoke-direct {p0}, LD2/v;-><init>()V

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iget-object p2, p0, LD2/x$a;->c:LD2/x;

    invoke-static {p2}, LD2/x;->a(LD2/x;)Ljava/util/Queue;

    move-result-object p2

    invoke-interface {p2, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    return-void
.end method
