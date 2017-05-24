//
//  PuppyTableViewController.swift
//  MDPuppies
//
//  Created by Alex Dunn on 5/24/17.
//  Copyright © 2017 Alex Dunn. All rights reserved.
//

import Foundation
import UIKit

class PuppyTableViewController : UITableViewController{
    var puppies = [Puppy]();
    
    
    override func viewDidLoad() {
        loadPuppies();
    }
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1;
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cellIdentifier = "PuppyTableViewCell";
        let puppy = puppies[indexPath.row];
        
        guard let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath) as? PuppyTableViewCell
            else{
                fatalError("The dequeued cell is not an instance of PuppyTableViewCell");
        }
        
        cell.ImageView.image = puppy.image;
        cell.NameLabel.text = puppy.name;
        
        return cell;
    }
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return puppies.count;
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        super.prepare(for: segue, sender: sender);
        
        guard let puppyDetailViewController = segue.destination as? PuppyDetailViewController
            else{
                fatalError("Unexpected segue destination");
        }
        guard let selectedPuppyCell = sender as? PuppyTableViewCell
        else{
            fatalError("Unexpected sender");
        }
        
        guard let indexPath = tableView.indexPath(for: selectedPuppyCell)
            else{
                fatalError("Selected cell is not being displayed");
        }
        
        let selectedPuppy = puppies[indexPath.row];
        puppyDetailViewController.puppy = selectedPuppy;
        
    }
    func loadPuppies(){
        // load the images
        let image1 = UIImage.init(named: "puppy1.jpg");
        let image2 = UIImage.init(named: "puppy2.jpg");
        let image3 = UIImage.init(named: "puppy3.jpg");
        let image4 = UIImage.init(named: "puppy4.jpg");
        let image5 = UIImage.init(named: "puppy5.jpg");
        let image6 = UIImage.init(named: "puppy6.jpg");
        let image7 = UIImage.init(named: "puppy7.jpg");
        let image8 = UIImage.init(named: "puppy8.jpg");
        let image9 = UIImage.init(named: "puppy9.jpg");
        
        // create the models
        let puppy1 = Puppy.init(id: 1, name: "Harper", description: getDescription(position: 0), image: image1!);
        let puppy2 = Puppy.init(id: 1, name: "Lucy", description: getDescription(position: 1), image: image2!);
        let puppy3 = Puppy.init(id: 1, name: "Adrian", description: getDescription(position: 2), image: image3!);
        let puppy4 = Puppy.init(id: 1, name: "Bella", description: getDescription(position: 3), image: image4!);
        let puppy5 = Puppy.init(id: 1, name: "Tildy", description: getDescription(position: 4), image: image5!);
        let puppy6 = Puppy.init(id: 1, name: "Apollo", description: getDescription(position: 5), image: image6!);
        let puppy7 = Puppy.init(id: 1, name: "Roxie", description: getDescription(position: 6), image: image7!);
        let puppy8 = Puppy.init(id: 1, name: "Junior", description: getDescription(position: 7), image: image8!);
        let puppy9 = Puppy.init(id: 1, name: "Dede", description: getDescription(position: 8), image: image9!);
        
        // update the array
        puppies.append(puppy1);
        puppies.append(puppy2);
        puppies.append(puppy3);
        puppies.append(puppy4);
        puppies.append(puppy5);
        puppies.append(puppy6);
        puppies.append(puppy7);
        puppies.append(puppy8);
        puppies.append(puppy9);
    }
    
    func getDescription(position: uint) -> String{
        switch(position){
        case 0: return "Hello.  I am called Harper.  My littermates and I traveled all the way from Georgia.  I am ready to find a forever home with someone just like you! Puppies are a lot of fun. I will provide you with hours of entertainment and a lifetime of love. I’m hoping you can teach me how to be an important part of your family. I’ll need lessons on housebreaking, chewing, and basic manners. It shouldn’t take me very long to learn everything because you will love me and be very patient.";
        case 1: return "Hello, my name is Lucy and I am a fun loving little girl from Georgia.  My brother Spot and I were born in Georgia, rescued and came here on a van so we could become important members of loving families! I did have a home for about a week, but then came back here when their schedule changed.  I am looking for a home where someone will be home, more than they are out.  This is only for a short time so I can get used to things and get some puppy training in.  I am potty trained and do well with going outside to do my business.  I am also very sweet and enjoy curling up on laps.";
        case 2: return "Greetings.  My name is Adrian.  My littermates and I came from Georgia to find forever homes.  Puppies are a lot of fun. I will provide you with hours of entertainment and a lifetime of love. I’m hoping you can teach me how to be an important part of your family. I’ll need lessons on housebreaking, chewing, and basic manners. It shouldn’t take me very long to learn everything because you will love me and be very patient.";
        case 3: return "Hi.  I am  Bella AKA. Fiona.  I am sweet, shy and nervous. I had a home for a short while and became good friends with my human daddy.  I was nervous with the young kids in the home and would taunt my human mommy when daddy was not there.  I do love puppies and play gently and sweet with them.  I am ready for a forever home without young kids.  Older respectful kids or teenagers may be okay.  I can tell you that I love to walk in sand on a beach, although I am not too sure about big waves.  I also enjoyed my trip to Salem Willows and loved walking on the boardwalk too.";
        case 4: return "Hello.  My name is Tildy and I am a super beautiful gal from Georgia. I am sweet, strong and I enjoy exploring.  I am ready to find a forever home where I can play, sleep and love.  If you are ready to adopt, I am ready to meet you.";
        case 5: return "Hi.  My name is Apollo and I am a sweetheart from Georgia.  I know I am going to enjoy my forever home and family life.  We can go exploring at the beach, in the woods or just around the neighborhood.  We can watch baseball on the TV and I promise to root for your favorite team, or we can sit on the porch and watch the sun go down.  Whatever we do I will be happy that we are doing it together.";
        case 6: return "Greetings.  My name is Roxie.  My brother Ian and I traveled from Georgia to find forever homes.  I am simply adorable and ready for love.";
        case 7: return "Hi.  My name is Junior and I am a rescued pup from Georgia.  I am a bit shy, but my true happy personality comes right out with another dog around.  They really help me with my confidence.  I enjoy running and playing with other dogs, so if you have one that will be big points for me!  When I get to know people, I do like to be petted, but again if you have another dog, this will help me so much faster!  I really am a great boy with tons of wonderful potential.  Come in and meet me today. ";
        case 8: return "Greetings.  My name is Dede  I am ready to find a forever home with someone just like you! Puppies are a lot of fun. I will provide you with hours of entertainment and a lifetime of love. I’m hoping you can teach me how to be an important part of your family. I’ll need lessons on housebreaking, chewing, and basic manners. It shouldn’t take me very long to learn everything because you will love me and be very patient.";
        default: return "";
        }
    }
}
