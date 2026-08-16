.class public LP8/f$Q;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LP8/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Q"
.end annotation


# instance fields
.field public final a:Ljava/lang/reflect/Field;

.field public final b:LC5/b;


# direct methods
.method public constructor <init>(Ljava/lang/reflect/Field;LC5/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "field",
            "entry"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, LP8/f$Q;->a:Ljava/lang/reflect/Field;

    .line 4
    iput-object p2, p0, LP8/f$Q;->b:LC5/b;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/reflect/Field;LC5/b;LP8/f$k;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, LP8/f$Q;-><init>(Ljava/lang/reflect/Field;LC5/b;)V

    return-void
.end method

.method public static synthetic a(LP8/f$Q;)LC5/b;
    .locals 0

    iget-object p0, p0, LP8/f$Q;->b:LC5/b;

    return-object p0
.end method

.method public static synthetic b(LP8/f$Q;)Ljava/lang/reflect/Field;
    .locals 0

    iget-object p0, p0, LP8/f$Q;->a:Ljava/lang/reflect/Field;

    return-object p0
.end method
