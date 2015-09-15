//
//  RepoCell.m
//  GithubDemo
//
//  Created by Amit Agarwal on 9/15/15.
//  Copyright (c) 2015 codepath. All rights reserved.
//

#import "RepoCell.h"


@implementation RepoCell

- (void)awakeFromNib {
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

- (void)setRepoData:(GithubRepo *)repo {

    self.titleLabel.text = repo.name;
    self.descriptionLabel.text = repo.repoDescription;
    self.starLabel.text = [NSString stringWithFormat:@"%li", (long)repo.stars];
    self.forkLabel.text = [NSString stringWithFormat:@"%li", (long)repo.forks];
    self.authorLabel.text = repo.ownerHandle;
    [self.avatarImageView setImageWithURL:[NSURL URLWithString:repo.ownerAvatarURL]];
}

@end
