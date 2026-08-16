.class public interface abstract Lokhttp3/n;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lokhttp3/n;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lokhttp3/n$a;

    invoke-direct {v0}, Lokhttp3/n$a;-><init>()V

    sput-object v0, Lokhttp3/n;->a:Lokhttp3/n;

    return-void
.end method


# virtual methods
.method public abstract a(Lokhttp3/v;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokhttp3/v;",
            ")",
            "Ljava/util/List<",
            "Lokhttp3/m;",
            ">;"
        }
    .end annotation
.end method

.method public abstract b(Lokhttp3/v;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokhttp3/v;",
            "Ljava/util/List<",
            "Lokhttp3/m;",
            ">;)V"
        }
    .end annotation
.end method
