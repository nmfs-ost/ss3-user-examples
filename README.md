# user-examples
Examples of stock synthesis models for users


# Disclaimer

“The United States Department of Commerce (DOC) GitHub project code is provided 
on an ‘as is’ basis and the user assumes responsibility for its use. DOC has 
relinquished control of the information and no longer has responsibility to 
protect the integrity, confidentiality, or availability of the information. Any 
claims against the Department of Commerce stemming from the use of its GitHub 
project will be governed by all applicable Federal law. Any reference to 
specific commercial products, processes, or services by service mark, trademark,
manufacturer, or otherwise, does not constitute or imply their endorsement,
recommendation or favoring by the Department of Commerce. The Department of 
Commerce seal and logo, or the seal and logo of a DOC bureau, shall not be used 
in any manner to imply endorsement of any commercial product or activity by DOC
or the United States Government.”

# Metadata on examples
| Name | Notable features | 
| --- | --- |
| simple						  | Long-standing example model | 
| simple_with_discard             | "simple" with discard data added |
| empirical_wtatage_and_age_selex | Uses empirical weight-at-age, based on "simple" |
| selex_age_example				  | Illustrates setup for 6 age-based selectivity types (more detail below)|
| selex_length_example			  | Illustrates setup for 6 length-based selectivity types (more detail below) |

# Selectivity examples
The models [selex_length_example](https://github.com/nmfs-stock-synthesis/user-examples/tree/main/model_files/selex_length_example) and [selex_age_example](https://github.com/nmfs-stock-synthesis/user-examples/tree/main/model_files/selex_age_example) can be used to see the control file setup for 5 length-based and 6 age-based selectivity types as shown in the figure below.

![selectivity at length and age as estimated in the 'selex_length_example' and 'selex_age_example' models](https://github.com/nmfs-stock-synthesis/user-examples/blob/main/figures/selex_shapes.png?raw=true)

These examples were created for a tutorial at the [2013 CAPAM workshop on selectivity](http://www.capamresearch.org/current-projects/selectivity). In these models, each fleet is provided the same simulated data so the large differences in estimated uncertainty associated with each type (as shown in the plot below) are an illustration of the flexibility of each type. Note: this figure depends on iteratively changing the fleet associated with the reported selectivity uncertainty specified at the bottom of the control file.
![uncertainty in selectivity at length as estimated in the 'selex_length_example' models](https://github.com/nmfs-stock-synthesis/user-examples/blob/main/figures/selex_length_uncertainty.png?raw=true)
