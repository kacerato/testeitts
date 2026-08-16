.class public interface abstract LT2/m;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:LT2/m;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, LT2/l;

    invoke-direct {v0}, LT2/l;-><init>()V

    sput-object v0, LT2/m;->a:LT2/m;

    return-void
.end method


# virtual methods
.method public abstract a(Lcom/google/firebase/components/ComponentRegistrar;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/firebase/components/ComponentRegistrar;",
            ")",
            "Ljava/util/List<",
            "LT2/g<",
            "*>;>;"
        }
    .end annotation
.end method
