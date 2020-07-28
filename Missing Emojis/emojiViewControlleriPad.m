//
//  emojiViewControlleriPad.m
//  Missing
//
//  Created by David Paige on 9/6/12.
//  Copyright (c) 2012 AppBastard. All rights reserved.
//

#import "emojiViewControlleriPad.h"

@implementation emojiViewControlleriPad
@synthesize arrayIndex, pageNumber;

-(void)makeImageArray{
    UIImage *a = [[UIImage alloc] initWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"_hockey mask.png" ofType:nil]];
    UIImage *b = [[UIImage alloc] initWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"_vampire.png" ofType:nil]];
    UIImage *c = [[UIImage alloc] initWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"_frankenstein.png" ofType:nil]];
    UIImage *d = [[UIImage alloc] initWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"_mummy.png" ofType:nil]];
    UIImage *e = [[UIImage alloc] initWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"_ghoul.png" ofType:nil]];
    UIImage *f = [[UIImage alloc] initWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"_bath salts.png" ofType:nil]];
    UIImage *g = [[UIImage alloc] initWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"_ju-on.png" ofType:nil]];
    UIImage *h = [[UIImage alloc] initWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"_creature.png" ofType:nil]];
    UIImage *i = [[UIImage alloc] initWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"_wolfman.png" ofType:nil]];
    UIImage *j = [[UIImage alloc] initWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"_bat.png" ofType:nil]];
    UIImage *k = [[UIImage alloc] initWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"_black cat.png" ofType:nil]];
    UIImage *l = [[UIImage alloc] initWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"_kraken.png" ofType:nil]];
    UIImage *m = [[UIImage alloc] initWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"_shark.png" ofType:nil]];
    UIImage *n = [[UIImage alloc] initWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"_jelly fish.png" ofType:nil]];
    UIImage *o = [[UIImage alloc] initWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"_milk.png" ofType:nil]];
    UIImage *p = [[UIImage alloc] initWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"_chocolate milk.png" ofType:nil]];
    UIImage *q = [[UIImage alloc] initWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"_orange juice.png" ofType:nil]];
    UIImage *r = [[UIImage alloc] initWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"_soda can.png" ofType:nil]];
    UIImage *s = [[UIImage alloc] initWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"_water bottle.png" ofType:nil]];
    UIImage *t = [[UIImage alloc] initWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"_ramune.png" ofType:nil]];
    UIImage *u = [[UIImage alloc] initWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"_ramen.png" ofType:nil]];
    UIImage *v = [[UIImage alloc] initWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"_sawblade.png" ofType:nil]];
    UIImage *w = [[UIImage alloc] initWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"_bloody knife.png" ofType:nil]];
    UIImage *x = [[UIImage alloc] initWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"_spiked bat.png" ofType:nil]];
    UIImage *y = [[UIImage alloc] initWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"_bloody hatchet.png" ofType:nil]];
    UIImage *z = [[UIImage alloc] initWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"_chainsaw.png" ofType:nil]];
    UIImage *aa = [[UIImage alloc] initWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"_bloody chainsaw.png" ofType:nil]];
    UIImage *bb = [[UIImage alloc] initWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"_freddy glove.png" ofType:nil]];
    UIImage *cc = [[UIImage alloc] initWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"_giant lizard.png" ofType:nil]];
    UIImage *dd = [[UIImage alloc] initWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"_moth monster.png" ofType:nil]];
    UIImage *ee = [[UIImage alloc] initWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"_fuujin.png" ofType:nil]];
    UIImage *ff = [[UIImage alloc] initWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"_raijin.png" ofType:nil]];
    UIImage *gg = [[UIImage alloc] initWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"_neko.png" ofType:nil]];
    UIImage *hh = [[UIImage alloc] initWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"_bean dog.png" ofType:nil]];
    UIImage *ii = [[UIImage alloc] initWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"_gotchi.png" ofType:nil]];
    UIImage *jj = [[UIImage alloc] initWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"_scrap book.png" ofType:nil]];
    UIImage *kk = [[UIImage alloc] initWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"_glue gun.png" ofType:nil]];
    UIImage *ll = [[UIImage alloc] initWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"_glue.png" ofType:nil]];
    UIImage *mm = [[UIImage alloc] initWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"_easel.png" ofType:nil]];
    UIImage *nn = [[UIImage alloc] initWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"_paint brush.png" ofType:nil]];
    UIImage *oo = [[UIImage alloc] initWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"_paint bucket.png" ofType:nil]];
    UIImage *pp = [[UIImage alloc] initWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"_buttons.png" ofType:nil]];
    UIImage *qq = [[UIImage alloc] initWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"_daruma.png" ofType:nil]];
    UIImage *rr = [[UIImage alloc] initWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"_ghostface.png" ofType:nil]];
    UIImage *ss = [[UIImage alloc] initWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"_damemask.png" ofType:nil]];
    UIImage *tt = [[UIImage alloc] initWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"_sackhead.png" ofType:nil]];
    UIImage *uu = [[UIImage alloc] initWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"_dollmask.png" ofType:nil]];
    UIImage *vv = [[UIImage alloc] initWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"_phibes.png" ofType:nil]];
    UIImage *ww = [[UIImage alloc] initWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"_fogface.png" ofType:nil]];
    UIImage *xx = [[UIImage alloc] initWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"_seal.png" ofType:nil]];
    UIImage *yy = [[UIImage alloc] initWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"_chihuahua.png" ofType:nil]];
    UIImage *zz = [[UIImage alloc] initWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"_pomeranian.png" ofType:nil]];
    UIImage *aaa = [[UIImage alloc] initWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"_siamese cat.png" ofType:nil]];    
    UIImage *bbb = [[UIImage alloc] initWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"_donkey.png" ofType:nil]];
    UIImage *ccc = [[UIImage alloc] initWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"_giraffe.png" ofType:nil]];
    UIImage *ddd = [[UIImage alloc] initWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"_flamingo.png" ofType:nil]];
    UIImage *eee = [[UIImage alloc] initWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"_sandwich.png" ofType:nil]];
    UIImage *fff = [[UIImage alloc] initWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"_taco.png" ofType:nil]];
    UIImage *ggg = [[UIImage alloc] initWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"_carrot.png" ofType:nil]];
    UIImage *hhh = [[UIImage alloc] initWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"_onion.png" ofType:nil]];
    UIImage *iii = [[UIImage alloc] initWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"_olives.png" ofType:nil]];
    UIImage *jjj = [[UIImage alloc] initWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"_coconut.png" ofType:nil]];
    UIImage *kkk = [[UIImage alloc] initWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"_open coconut.png" ofType:nil]];
    UIImage *lll = [[UIImage alloc] initWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"_necronomicon.png" ofType:nil]];
    UIImage *mmm = [[UIImage alloc] initWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"_spellbook.png" ofType:nil]];
    UIImage *nnn = [[UIImage alloc] initWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"_cauldron.png" ofType:nil]];
    UIImage *ooo = [[UIImage alloc] initWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"_poison.png" ofType:nil]];
    UIImage *ppp = [[UIImage alloc] initWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"_13.png" ofType:nil]];
    UIImage *qqq = [[UIImage alloc] initWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"_gothic cross1.png" ofType:nil]];
    UIImage *rrr = [[UIImage alloc] initWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"_gothic cross2.png" ofType:nil]];
    UIImage *sss = [[UIImage alloc] initWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"_5 yen.png" ofType:nil]];
    UIImage *ttt = [[UIImage alloc] initWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"_omamori.png" ofType:nil]];
    UIImage *uuu = [[UIImage alloc] initWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"_ofuda.png" ofType:nil]];
    UIImage *vvv = [[UIImage alloc] initWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"_fan.png" ofType:nil]];
    UIImage *www = [[UIImage alloc] initWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"_parasol.png" ofType:nil]];
    UIImage *xxx = [[UIImage alloc] initWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"_school uniform.png" ofType:nil]];
    UIImage *yyy = [[UIImage alloc] initWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"_katamari.png" ofType:nil]];
    UIImage *zzz = [[UIImage alloc] initWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"_beads.png" ofType:nil]];
    UIImage *aaaa = [[UIImage alloc] initWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"_yarn.png" ofType:nil]];
    UIImage *bbbb = [[UIImage alloc] initWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"_knitting needles.png" ofType:nil]];
    UIImage *cccc = [[UIImage alloc] initWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"_crochet.png" ofType:nil]];
    UIImage *dddd = [[UIImage alloc] initWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"_needle and thread.png" ofType:nil]];
    UIImage *eeee = [[UIImage alloc] initWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"_needle.png" ofType:nil]];
    UIImage *ffff = [[UIImage alloc] initWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"_spool.png" ofType:nil]];
    UIImage *gggg = [[UIImage alloc] initWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"_well ghost.png" ofType:nil]];
    UIImage *hhhh = [[UIImage alloc] initWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"_monster1.png" ofType:nil]];
    UIImage *iiii = [[UIImage alloc] initWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"_monster2.png" ofType:nil]];
    UIImage *jjjj = [[UIImage alloc] initWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"_monster3.png" ofType:nil]];
    UIImage *kkkk = [[UIImage alloc] initWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"_witch.png" ofType:nil]];
    UIImage *llll = [[UIImage alloc] initWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"_nosferatu.png" ofType:nil]];
    UIImage *mmmm = [[UIImage alloc] initWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"_zombie.png" ofType:nil]];
    UIImage *nnnn = [[UIImage alloc] initWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"_ostrich.png" ofType:nil]];
    UIImage *oooo = [[UIImage alloc] initWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"_gecko.png" ofType:nil]];
    UIImage *pppp = [[UIImage alloc] initWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"_pill bug.png" ofType:nil]];
    UIImage *qqqq = [[UIImage alloc] initWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"_crane fly.png" ofType:nil]];
    UIImage *rrrr = [[UIImage alloc] initWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"_butterfly.png" ofType:nil]];
    UIImage *ssss = [[UIImage alloc] initWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"_nessy.png" ofType:nil]];
    UIImage *tttt = [[UIImage alloc] initWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"_green bean.png" ofType:nil]];
    UIImage *uuuu = [[UIImage alloc] initWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"_pocky.png" ofType:nil]];
    UIImage *vvvv = [[UIImage alloc] initWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"_unwrapped candy.png" ofType:nil]];
    UIImage *wwww = [[UIImage alloc] initWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"_blood pool.png" ofType:nil]];
    UIImage *xxxx = [[UIImage alloc] initWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"_gravestone.png" ofType:nil]];
    UIImage *yyyy = [[UIImage alloc] initWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"_pale.png" ofType:nil]];
    UIImage *zzzz = [[UIImage alloc] initWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"_blood.png" ofType:nil]];
    UIImage *aaaaa = [[UIImage alloc] initWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"_ring tv.png" ofType:nil]];
    
    imageArray = [[NSArray alloc] initWithObjects:a,b,c,d,e,f,g,h,i,j,k,l,m,n,o,p,q,r,s,t,u,v,w,x,y,z,aa,bb,cc,dd,ee,ff,gg,hh,ii,jj,kk,ll,mm,nn,oo,pp,qq,rr,ss,tt,uu,vv,ww,xx,yy,zz,aaa,bbb,ccc,ddd,eee,fff,ggg,hhh,iii,jjj,kkk,lll,mmm,nnn,ooo,ppp,qqq,rrr,sss,ttt,uuu,vvv,www,xxx,yyy,zzz,aaaa,bbbb,cccc,dddd,eeee,ffff,gggg,hhhh,iiii,jjjj,kkkk,llll,mmmm,nnnn,oooo,pppp,qqqq,rrrr,ssss,tttt,uuuu,vvvv,wwww,xxxx,yyyy,zzzz,aaaaa,nil];    arrayCount = 0;
    
}
-(void)enableTouches:(UIView *)view{
    UITapGestureRecognizer *touch = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(touchAction:)];
    [view addGestureRecognizer:touch];
    UILongPressGestureRecognizer *press = [[UILongPressGestureRecognizer alloc] initWithTarget:self action:@selector(pressAction:)];
    press.minimumPressDuration =1.5;
    [view addGestureRecognizer:press];
}

-(void)makeImageViewsAndParentViewsFirstRow:(UIImageView *)imageView :(UIView *)view{
    if (arrayCount == 0) {
        xSpacing = 50;
    }
    view = [[UIView alloc] initWithFrame:CGRectMake((90 * arrayCount) + xSpacing, 26, 40, 40)];
    imageView = [[UIImageView alloc] initWithImage:[imageArray objectAtIndex:arrayCount]];
    
    imageView.userInteractionEnabled = YES;
    imageView.tag = arrayCount;                            
    
    [view addSubview:imageView];
    [self enableTouches:imageView];
    [scrollViewA addSubview:view];
    
    if (arrayCount == 6) {
        xSpacing = 120;
    }
    if (arrayCount == 13) {
        xSpacing = 180;
    }
    if (arrayCount == 20) {
        xSpacing = 230;
    }
    if (arrayCount == 27) {
        xSpacing = 300;
    }
    if (arrayCount == 34) {
        xSpacing = 360;
    }

    
    ++arrayCount;
}

-(void)makeImageViewsAndParentViewsSecondRow:(UIImageView *)imageView :(UIView *)view{
    if (secondArrayCount == 0) {
        xSpacing = 50;
    }
    view = [[UIView alloc] initWithFrame:CGRectMake((90 * secondArrayCount) + xSpacing, 98, 40, 40)];
    imageView = [[UIImageView alloc] initWithImage:[imageArray objectAtIndex:arrayCount]];
    
    imageView.userInteractionEnabled = YES;
    imageView.tag = arrayCount;                            
    
    [view addSubview:imageView];
    [self enableTouches:imageView];
    [scrollViewA addSubview:view];
    
    if (secondArrayCount == 6) {
        xSpacing = 120;
    }
    if (secondArrayCount == 13) {
        xSpacing = 180;
    }
    if (secondArrayCount == 20) {
        xSpacing = 230;
    }
    if (secondArrayCount == 27) {
        xSpacing = 300;
    }
    if (secondArrayCount == 34) {
        xSpacing = 360;
    }
    
    ++secondArrayCount;
    ++arrayCount;
}

-(void)makeImageViewsAndParentViewsThirdRow:(UIImageView *)imageView :(UIView *)view{
    
    if (thirdArrayCount ==0) {
        xSpacing = 50;
    }
    view = [[UIView alloc] initWithFrame:CGRectMake((90 * thirdArrayCount) + xSpacing, 164, 40, 40)];
    imageView = [[UIImageView alloc] initWithImage:[imageArray objectAtIndex:arrayCount]];
    
    imageView.userInteractionEnabled = YES;
    imageView.tag = arrayCount;                            
    
    [view addSubview:imageView];
    [self enableTouches:imageView];
    [scrollViewA addSubview:view];
    
    if (thirdArrayCount == 6) {
        xSpacing = 120;
    }
    if (thirdArrayCount == 12) {
        xSpacing = 450;
    }
    if (thirdArrayCount == 15) {
        xSpacing = 820;
    }
    if (thirdArrayCount == 19) {
        xSpacing = 1290;
    }
    
    ++thirdArrayCount;
    ++arrayCount;
}

-(void)viewDidLoad
{
    
    xSpacing = 5;
    [self makeImageArray];
    
    dimensions = CGRectMake(40, 680, 690, 230);
    self.view.bounds = dimensions;
    self.view.frame = dimensions;
    self.view.backgroundColor = [UIColor clearColor];
    
    scrollViewA = [[UIScrollView alloc] initWithFrame:dimensions];
    scrollViewA.backgroundColor = [UIColor clearColor];
    [self.view addSubview:scrollViewA];
    scrollViewA.delegate = self;
    scrollViewA.userInteractionEnabled = YES;
    scrollViewA.bounces = NO;
    scrollViewA.showsHorizontalScrollIndicator = NO;
    scrollViewA.pagingEnabled = YES;
    scrollViewA.contentSize = CGSizeMake(4140, 230);
    
    UIImageView *newImageView;
    UIView *newView;
    
    do {
        [self makeImageViewsAndParentViewsFirstRow:newImageView:newView];
    } while (arrayCount <= 41);
    
    secondArrayCount = 0;
    xSpacing = 5;
   
    do {
        [self makeImageViewsAndParentViewsSecondRow:newImageView:newView];
    } while (arrayCount >= 42 && arrayCount < 84);
    
    thirdArrayCount = 0;
    xSpacing = 5;
    
    do {
        [self makeImageViewsAndParentViewsThirdRow:newImageView:newView];
    } while (arrayCount >= 84 && arrayCount < 105);
    
    [super viewDidLoad];    
}

-(void)scrollViewDidEndDecelerating:(UIScrollView *)scrollView{
    pageNumber = 0;
    if (scrollView.contentOffset.x > 689) {
        pageNumber = 1;
    }
    if (scrollView.contentOffset.x > 1379) {
        pageNumber = 2;
    }
    if (scrollView.contentOffset.x > 2069) {
        pageNumber = 3;
    }
    if (scrollView.contentOffset.x > 2759) {
        pageNumber = 4;
    }
    if (scrollView.contentOffset.x > 3449) {
        pageNumber = 5;
    }


    [[NSNotificationCenter defaultCenter] postNotificationName:@"scrollingDidEnd" object:self];
}

-(void)pressAction:(UILongPressGestureRecognizer *)gestureRecognizer{     
    arrayIndex = gestureRecognizer.view.tag;
    [UIView animateWithDuration:.3 animations:^{
        gestureRecognizer.view.transform = CGAffineTransformMakeScale(2,2);
        gestureRecognizer.view.alpha = 0;
    } completion:^(BOOL finished) {
        gestureRecognizer.view.transform = CGAffineTransformMakeScale(1, 1);
        gestureRecognizer.view.alpha = 1;
    }];
    [[NSNotificationCenter defaultCenter] postNotificationName:@"longTouchHappened" object:self];
}

-(void)touchAction:(UITapGestureRecognizer *)gestureRecognizer{
    arrayIndex = gestureRecognizer.view.tag;
    
    gestureRecognizer.view.transform = CGAffineTransformMakeScale(.9, .9);
    [UIView animateWithDuration:.3 animations:^{
        gestureRecognizer.view.transform = CGAffineTransformMakeScale(1, 1);
    } completion:^(BOOL finished) {}];
    
    [[NSNotificationCenter defaultCenter] postNotificationName:@"touchHappened" object:self];
}

-(void)viewDidUnload
{
    self.view = nil;
    scrollViewA = nil;
    [super viewDidUnload];
}

@end
